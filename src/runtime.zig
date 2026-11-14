const std = @import("std");
const c = @import("c");

const gpa = std.heap.smp_allocator;
const zero_stamp: c.XtkChangeStamp = .{ .source = 0, .revision = 0 };

pub const ScrollPos = struct {
    x: f32,
    y: f32,
    max_x: f32,
    max_y: f32,

    pub fn atEnd(self: ScrollPos) bool {
        return self.y >= self.max_y - 1.0;
    }
};

pub const Value = union(enum) {
    bool: bool,
    i32: i32,
    f32: f32,
    f64: f64,
    enumeration: u32,
    color: u32,
    str: []const u8,
    resource: u64,

    fn same(a: Value, b: Value) bool {
        return switch (a) {
            .bool => |v| b == .bool and b.bool == v,
            .i32 => |v| b == .i32 and b.i32 == v,
            .f32 => |v| b == .f32 and @as(u32, @bitCast(b.f32)) == @as(u32, @bitCast(v)),
            .f64 => |v| b == .f64 and @as(u64, @bitCast(b.f64)) == @as(u64, @bitCast(v)),
            .enumeration => |v| b == .enumeration and b.enumeration == v,
            .color => |v| b == .color and b.color == v,
            .str => |v| b == .str and std.mem.eql(u8, b.str, v),
            .resource => |v| b == .resource and b.resource == v,
        };
    }

    fn reset(self: Value, id: u32) Value {
        return switch (self) {
            .f32 => .{ .f32 = if (id == c.XTK_PROP_WIDTH or id == c.XTK_PROP_HEIGHT) std.math.nan(f32) else 0 },
            .bool => .{ .bool = id == c.XTK_PROP_ENABLED },
            .i32 => .{ .i32 = 0 },
            .f64 => .{ .f64 = 0 },
            .enumeration => .{ .enumeration = 0 },
            .color => .{ .color = 0 },
            .str => .{ .str = "" },
            .resource => .{ .resource = 0 },
        };
    }

    fn toC(self: Value) c.XtkValue {
        var v = std.mem.zeroes(c.XtkValue);
        switch (self) {
            .bool => |x| {
                v.kind = c.XTK_VALUE_BOOL;
                v.u.b = x;
            },
            .i32 => |x| {
                v.kind = c.XTK_VALUE_I32;
                v.u.i32 = x;
            },
            .f32 => |x| {
                v.kind = c.XTK_VALUE_F32;
                v.u.f32 = x;
            },
            .f64 => |x| {
                v.kind = c.XTK_VALUE_F64;
                v.u.f64 = x;
            },
            .enumeration => |x| {
                v.kind = c.XTK_VALUE_ENUM;
                v.u.u32 = x;
            },
            .color => |x| {
                v.kind = c.XTK_VALUE_COLOR;
                v.u.color.rgba = x;
            },
            .resource => |x| {
                v.kind = c.XTK_VALUE_RESOURCE;
                v.u.resource = x;
            },
            .str => |x| {
                v.kind = c.XTK_VALUE_STRING;
                v.u.string.data = @constCast(x.ptr);
                v.u.string.len = @intCast(x.len);
            },
        }
        return v;
    }

    fn dupe(self: Value) !Value {
        return switch (self) {
            .str => |s| .{ .str = try gpa.dupe(u8, s) },
            else => self,
        };
    }

    fn free(self: Value) void {
        if (self == .str) gpa.free(self.str);
    }
};

pub fn Handler(comptime M: type) type {
    return union(enum) {
        value: M,
        bool: *const fn (bool) M,
        i32: *const fn (i32) M,
        f32: *const fn (f32) M,
        f64: *const fn (f64) M,
        str: *const fn ([]const u8) M,
        query: *const fn ([]const u8, i32) M,
        rating: *const fn (f64, i32) M,
        index_bool: *const fn (i32, bool) M,
        range: *const fn (f32, f32) M,
        scroll: *const fn (ScrollPos) M,

        fn text(data: [*c]const u8, len: u32) []const u8 {
            if (data == null or len == 0) return "";
            return data[0..len];
        }

        fn make(self: @This(), p: *const c.XtkEventPayload) M {
            const u = &p.u;
            return switch (self) {
                .value => |m| m,
                .bool => |f| f(u.b),
                .i32 => |f| f(u.i32),
                .f32 => |f| f(u.f32),
                .f64 => |f| f(u.f64),
                .str => |f| f(text(u.string.data, u.string.len)),
                .query => |f| f(text(u.query.text, u.query.len), u.query.index),
                .rating => |f| f(u.rating.value, u.rating.count),
                .index_bool => |f| f(u.index_bool.index, u.index_bool.value),
                .range => |f| f(u.range.start, u.range.end),
                .scroll => |f| f(.{ .x = u.scroll.x, .y = u.scroll.y, .max_x = u.scroll.max_x, .max_y = u.scroll.max_y }),
            };
        }
    };
}

pub fn ItemFn(comptime A: type) type {
    return *const fn (ui: *Ui(A), index: usize) El(A);
}

fn Prop() type {
    return struct { id: u32, value: Value };
}

fn ElData(comptime A: type) type {
    return struct {
        ty: u32,
        key: ?u64 = null,
        props: std.ArrayList(Prop()) = .empty,
        handlers: std.ArrayList(Hook(A)) = .empty,
        kids: std.ArrayList(usize) = .empty,
        items: ?struct { count: usize, item: ItemFn(A) } = null,
    };
}

fn Hook(comptime A: type) type {
    return struct { event: u32, handler: Handler(A.Msg) };
}

pub fn Ui(comptime A: type) type {
    return struct {
        pub const App = A;
        model: *const A,
        arena: std.mem.Allocator,
        els: std.ArrayList(ElData(A)) = .empty,

        const Self = @This();

        pub fn el(self: *Self, ty: c_int) El(A) {
            self.els.append(self.arena, .{ .ty = @intCast(ty) }) catch @panic("out of memory");
            return .{ .ui = self, .id = self.els.items.len - 1 };
        }

        pub fn fmt(self: *Self, comptime f: []const u8, args: anytype) []const u8 {
            return std.fmt.allocPrint(self.arena, f, args) catch @panic("out of memory");
        }

        fn data(self: *Self, id: usize) *ElData(A) {
            return &self.els.items[id];
        }
    };
}

pub fn El(comptime A: type) type {
    return struct {
        ui: *Ui(A),
        id: usize,

        const Self = @This();

        pub fn prop(self: Self, id: c_int, value: Value) void {
            const d = self.ui.data(self.id);
            for (d.props.items) |*p| if (p.id == id) {
                p.value = value;
                return;
            };
            d.props.append(self.ui.arena, .{ .id = @intCast(id), .value = value }) catch @panic("out of memory");
        }

        pub fn on(self: Self, event: c_int, handler: Handler(A.Msg)) void {
            const d = self.ui.data(self.id);
            for (d.handlers.items) |*h| if (h.event == event) {
                h.handler = handler;
                return;
            };
            d.handlers.append(self.ui.arena, .{ .event = @intCast(event), .handler = handler }) catch @panic("out of memory");
        }

        pub fn key(self: Self, k: u64) void {
            self.ui.data(self.id).key = k;
        }

        pub fn child(self: Self, kid: El(A)) void {
            self.ui.data(self.id).kids.append(self.ui.arena, kid.id) catch @panic("out of memory");
        }

        pub fn items(self: Self, count: usize, item: ItemFn(A)) void {
            self.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = @intCast(@min(count, std.math.maxInt(i32))) });
            self.ui.data(self.id).items = .{ .count = count, .item = item };
        }
    };
}

pub fn toEl(comptime A: type, x: anytype) El(A) {
    return if (@TypeOf(x) == El(A)) x else x.el;
}

pub const Theme = enum(c_int) {
    system = c.FLUX_THEME_SYSTEM,
    light = c.FLUX_THEME_LIGHT,
    dark = c.FLUX_THEME_DARK,
};

pub const Window = struct {
    title: []const u8 = "zxent",
    width: c_int = 960,
    height: c_int = 640,
    theme: Theme = .system,
};

pub fn run(comptime A: type, window: Window, model: A) u8 {
    return Runtime(A).run(window, model);
}

fn Runtime(comptime A: type) type {
    const M = A.Msg;
    return struct {
        app: A,
        queue: std.ArrayList(M) = .empty,
        flux: ?*c.FluxApp = null,
        dirty: bool = true,
        scene: c.XtkScene = undefined,
        root: c.XtkCtrl = 0,
        tree: ?*Node = null,

        const Self = @This();
        const Window_ = struct { first: i32, last: i32, lanes: i32 };

        const Node = struct {
            rt: *Self,
            ctrl: c.XtkCtrl = 0,
            local: ?c.XtkLocalId = null,
            ty: u32,
            key: ?u64,
            props: std.ArrayList(Prop()) = .empty,
            handlers: std.ArrayList(Hook(A)) = .empty,
            subs: std.ArrayList(Sub) = .empty,
            kids: std.ArrayList(*Node) = .empty,
            window: ?Window_ = null,
            echo: c.XtkChangeStamp = zero_stamp,
            user_events: u32 = 0,

            fn hasSub(n: *const Node, event: u32) bool {
                for (n.subs.items) |s| if (s.event == event) return true;
                return false;
            }

            fn target(n: *const Node) c.XtkNodeRef {
                return if (n.local) |l| localRef(l) else existing(n.ctrl);
            }

            fn destroy(n: *Node) void {
                for (n.kids.items) |k| k.destroy();
                for (n.props.items) |p| p.value.free();
                n.props.deinit(gpa);
                n.handlers.deinit(gpa);
                n.subs.deinit(gpa);
                n.kids.deinit(gpa);
                gpa.destroy(n);
            }
        };

        const Sub = struct { event: u32, pending: bool, token: c.XtkSubRef = 0, id: c.XtkSubId = 0 };

        fn existing(ctrl: c.XtkCtrl) c.XtkNodeRef {
            var r = std.mem.zeroes(c.XtkNodeRef);
            r.kind = c.XTK_REF_EXISTING;
            r.u.existing = ctrl;
            return r;
        }

        fn localRef(id: c.XtkLocalId) c.XtkNodeRef {
            var r = std.mem.zeroes(c.XtkNodeRef);
            r.kind = c.XTK_REF_LOCAL;
            r.u.local = id;
            return r;
        }

        fn none() c.XtkNodeRef {
            return std.mem.zeroes(c.XtkNodeRef);
        }

        fn wake(self: *Self) void {
            if (self.flux) |f| c.flux_app_redraw(f);
        }

        fn trampoline(arg: ?*anyopaque, event: [*c]const c.XtkEvent) callconv(.c) u32 {
            const node: *Node = @ptrCast(@alignCast(arg.?));
            const ev: *const c.XtkEvent = @ptrCast(event);
            const self = node.rt;
            if (ev.id == c.XTK_EVENT_REALIZE) {
                const w = ev.payload.u.window;
                node.window = .{ .first = w.first, .last = w.last, .lanes = w.lanes };
                self.dirty = true;
                self.wake();
                return c.XTK_EVENT_HANDLED;
            }
            if (ev.change.revision > node.echo.revision) node.echo = ev.change;
            if (ev.cause == c.XTK_EVENT_CAUSE_USER and ev.id < 32) node.user_events |= @as(u32, 1) << @intCast(ev.id);
            for (node.handlers.items) |h| if (h.event == ev.id) {
                self.queue.append(gpa, h.handler.make(&ev.payload)) catch return c.XTK_EVENT_CONTINUE;
                self.wake();
                return c.XTK_EVENT_HANDLED;
            };
            return c.XTK_EVENT_CONTINUE;
        }

        const Recon = struct {
            rt: *Self,
            ui: *Ui(A),
            txn: *c.XtkTxn,
            graveyard: std.ArrayList(*Node) = .empty,

            fn propF32(props: []const Prop(), id: c_int, fallback: f32) f32 {
                for (props) |p| if (p.id == id and p.value == .f32 and p.value.f32 > 0) return p.value.f32;
                return fallback;
            }

            fn realize(r: *Recon, id: usize, window: ?Window_) void {
                const d = r.ui.data(id);
                const it = d.items orelse return;
                const count: i32 = @intCast(@min(it.count, std.math.maxInt(i32)));
                const rows: i32 = @intFromFloat(@ceil(propF32(d.props.items, c.XTK_PROP_HEIGHT, 600) /
                    propF32(d.props.items, c.XTK_PROP_ITEM_HEIGHT, 40)));
                const w = window orelse Window_{ .first = 0, .last = rows + 3, .lanes = 1 };
                var first = w.first;
                var last = w.last;
                if (last >= count) {
                    const span = last - first;
                    last = count - 1;
                    first = @max(last - span, 0);
                    first -= @rem(first, @max(w.lanes, 1));
                }
                first = @max(first, 0);
                El(A).prop(.{ .ui = r.ui, .id = id }, c.XTK_PROP_REALIZED_FIRST, .{ .i32 = first });
                const span: usize = @intCast(@max(last - first + 1, 1));
                var i = first;
                while (i <= last) : (i += 1) {
                    const row = r.ui.el(c.XTK_CTRL_LISTITEM);
                    row.key(@as(usize, @intCast(i)) % span);
                    row.child(it.item(r.ui, @intCast(i)));
                    r.ui.data(id).kids.append(r.ui.arena, row.id) catch @panic("out of memory");
                }
            }

            fn wanted(d: *const ElData(A), event: u32) bool {
                if (event == c.XTK_EVENT_REALIZE) return d.items != null;
                for (d.handlers.items) |h| if (h.event == event) return true;
                return false;
            }

            fn subscribe(r: *Recon, node: *Node, target: c.XtkNodeRef, event: u32) void {
                const token = c.xtk_txn_on(r.txn, target, event, c.XTK_EVENT_PHASE_MASK_TARGET, trampoline, node);
                if (token == std.math.maxInt(u32)) @panic("subscribe failed");
                node.subs.append(gpa, .{ .event = event, .pending = true, .token = token }) catch @panic("out of memory");
            }

            fn subscribeAll(r: *Recon, node: *Node, d: *const ElData(A)) void {
                for (d.handlers.items) |h| {
                    if (!node.hasSub(h.event)) r.subscribe(node, node.target(), h.event);
                }
                if (d.items != null and !node.hasSub(c.XTK_EVENT_REALIZE)) r.subscribe(node, node.target(), c.XTK_EVENT_REALIZE);
            }

            fn takeHandlers(node: *Node, d: *const ElData(A)) void {
                node.handlers.clearRetainingCapacity();
                node.handlers.appendSlice(gpa, d.handlers.items) catch @panic("out of memory");
            }

            fn storeProps(node: *Node, d: *const ElData(A)) void {
                for (node.props.items) |p| p.value.free();
                node.props.clearRetainingCapacity();
                for (d.props.items) |p| {
                    node.props.append(gpa, .{ .id = p.id, .value = p.value.dupe() catch @panic("out of memory") }) catch @panic("out of memory");
                }
            }

            fn create(r: *Recon, id: usize, parent: c.XtkNodeRef, before: c.XtkNodeRef) *Node {
                r.realize(id, null);
                const d = r.ui.data(id);
                var patches: std.ArrayList(c.XtkPropPatch) = .empty;
                defer patches.deinit(gpa);
                for (d.props.items) |p| {
                    patches.append(gpa, .{ .id = p.id, .value = p.value.toC(), .change = zero_stamp }) catch @panic("out of memory");
                }
                const local = c.xtk_txn_create(r.txn, d.ty, parent, before, patches.items.ptr, @intCast(patches.items.len));
                if (local == std.math.maxInt(u32)) @panic("create failed");
                const node = gpa.create(Node) catch @panic("out of memory");
                node.* = .{ .rt = r.rt, .local = local, .ty = d.ty, .key = d.key };
                storeProps(node, d);
                takeHandlers(node, d);
                r.subscribeAll(node, d);
                for (r.ui.data(id).kids.items) |k| {
                    node.kids.append(gpa, r.create(k, localRef(local), none())) catch @panic("out of memory");
                }
                return node;
            }

            fn set(r: *Recon, ctrl: c.XtkCtrl, id: u32, v: Value, stamp: c.XtkChangeStamp) void {
                if (!c.xtk_txn_set(r.txn, existing(ctrl), id, v.toC(), stamp)) @panic("set failed");
            }

            fn forced(node: *Node, id: u32) bool {
                var e: u32 = 1;
                while (e < 32) : (e += 1) {
                    if (node.user_events & (@as(u32, 1) << @intCast(e)) == 0) continue;
                    var out: [c.XTK_MIRROR_MAX]c.XtkPropertyId = undefined;
                    const n = c.xtk_catalog_mirrors(node.ty, e, &out);
                    for (out[0..n]) |m| if (m == id) return true;
                }
                return false;
            }

            fn diffProps(r: *Recon, node: *Node, d: *const ElData(A)) void {
                for (d.props.items) |p| {
                    var unchanged = false;
                    for (node.props.items) |o| if (o.id == p.id and o.value.same(p.value)) {
                        unchanged = true;
                    };
                    if (unchanged and !forced(node, p.id)) continue;
                    r.set(node.ctrl, p.id, p.value, node.echo);
                }
                for (node.props.items) |o| {
                    var kept = false;
                    for (d.props.items) |p| if (p.id == o.id) {
                        kept = true;
                    };
                    if (!kept) r.set(node.ctrl, o.id, o.value.reset(o.id), zero_stamp);
                }
                node.user_events = 0;
            }

            fn diffSubs(r: *Recon, node: *Node, d: *const ElData(A)) void {
                var i: usize = 0;
                while (i < node.subs.items.len) {
                    const s = node.subs.items[i];
                    if (wanted(d, s.event)) {
                        i += 1;
                        continue;
                    }
                    if (!s.pending) _ = c.xtk_txn_off(r.txn, s.id);
                    _ = node.subs.swapRemove(i);
                }
                r.subscribeAll(node, d);
            }

            fn update(r: *Recon, node: *Node, id: usize) void {
                r.realize(id, node.window);
                const d = r.ui.data(id);
                r.diffProps(node, d);
                takeHandlers(node, d);
                r.diffSubs(node, d);
                storeProps(node, d);
                node.key = d.key;
                const old = node.kids;
                node.kids = .empty;
                r.kids(old, r.ui.data(id).kids.items, existing(node.ctrl), &node.kids);
            }

            fn match(r: *Recon, old: []const *Node, new: []const usize, out: []?usize) void {
                var used = gpa.alloc(bool, old.len) catch @panic("out of memory");
                defer gpa.free(used);
                @memset(used, false);
                var cursor: usize = 0;
                for (new, 0..) |id, i| {
                    const d = r.ui.data(id);
                    out[i] = null;
                    if (d.key) |k| {
                        for (old, 0..) |n, j| if (!used[j] and n.key != null and n.key.? == k and n.ty == d.ty) {
                            out[i] = j;
                            used[j] = true;
                            break;
                        };
                        continue;
                    }
                    while (cursor < old.len and (old[cursor].key != null or used[cursor])) cursor += 1;
                    if (cursor < old.len and old[cursor].ty == d.ty) {
                        out[i] = cursor;
                        used[cursor] = true;
                    }
                    if (cursor < old.len) cursor += 1;
                }
            }

            fn kids(r: *Recon, old_list: std.ArrayList(*Node), new: []const usize, parent: c.XtkNodeRef, out: *std.ArrayList(*Node)) void {
                var old = old_list;
                defer old.deinit(gpa);
                const assign = gpa.alloc(?usize, new.len) catch @panic("out of memory");
                defer gpa.free(assign);
                r.match(old.items, new, assign);
                var taken = gpa.alloc(bool, old.items.len) catch @panic("out of memory");
                defer gpa.free(taken);
                @memset(taken, false);
                out.resize(gpa, new.len) catch @panic("out of memory");
                var next = none();
                var min_after: usize = std.math.maxInt(usize);
                var i = new.len;
                while (i > 0) {
                    i -= 1;
                    const node = if (assign[i]) |oi| blk: {
                        taken[oi] = true;
                        const n = old.items[oi];
                        r.update(n, new[i]);
                        if (oi < min_after) min_after = oi else _ = c.xtk_txn_move(r.txn, parent, n.target(), next);
                        break :blk n;
                    } else r.create(new[i], parent, next);
                    next = node.target();
                    out.items[i] = node;
                }
                for (old.items, 0..) |n, j| if (!taken[j]) {
                    _ = c.xtk_txn_drop(r.txn, existing(n.ctrl));
                    r.graveyard.append(gpa, n) catch @panic("out of memory");
                };
            }
        };

        fn resolve(node: *Node, result: *const c.XtkBatchResult) void {
            if (node.local) |l| {
                node.ctrl = result.controls[l].control;
                node.local = null;
            }
            for (node.subs.items) |*s| if (s.pending) {
                s.id = result.subscriptions[s.token].id;
                s.pending = false;
            };
            for (node.kids.items) |k| resolve(k, result);
        }

        fn frame(self: *Self) void {
            var drained = false;
            while (self.queue.items.len > 0) {
                const msg = self.queue.orderedRemove(0);
                self.app.update(msg);
                drained = true;
            }
            if (!drained and !self.dirty and self.tree != null) return;
            self.dirty = false;
            var arena_state = std.heap.ArenaAllocator.init(gpa);
            defer arena_state.deinit();
            var ui: Ui(A) = .{ .model = &self.app, .arena = arena_state.allocator() };
            const top = toEl(A, self.app.view(&ui));
            var txn = std.mem.zeroes(c.XtkTxn);
            if (!c.xtk_txn_begin(&self.scene, &txn)) @panic("begin failed");
            var recon: Recon = .{ .rt = self, .ui = &ui, .txn = &txn };
            var old: std.ArrayList(*Node) = .empty;
            if (self.tree) |t| old.append(gpa, t) catch @panic("out of memory");
            var next: std.ArrayList(*Node) = .empty;
            defer next.deinit(gpa);
            recon.kids(old, &[_]usize{top.id}, existing(self.root), &next);
            var diag = std.mem.zeroes(c.XtkBatchDiag);
            const result = c.xtk_txn_commit(&txn, &diag) orelse
                std.debug.panic("commit failed: stage {d} error {d} op {d}", .{ diag.stage, diag.@"error", diag.failed_op });
            resolve(next.items[0], result);
            c.xtk_batchresult_destroy(result);
            self.tree = next.items[0];
            for (recon.graveyard.items) |n| n.destroy();
            recon.graveyard.deinit(gpa);
        }

        fn frameCb(ctx: ?*anyopaque) callconv(.c) void {
            const self: *Self = @ptrCast(@alignCast(ctx.?));
            self.frame();
        }

        fn run(window: Window, model: A) u8 {
            const title = std.unicode.utf8ToUtf16LeAllocZ(gpa, window.title) catch return 1;
            defer gpa.free(title);
            var cfg = std.mem.zeroes(c.FluxAppCfg);
            cfg.title = title.ptr;
            cfg.width = window.width;
            cfg.height = window.height;
            cfg.theme = @intCast(@intFromEnum(window.theme));
            cfg.backdrop = c.FLUX_BACKDROP_MICA;
            const flux = c.flux_app_create(&cfg) orelse return 1;
            const host = c.flux_app_attachhost(flux) orelse {
                c.flux_app_destroy(flux);
                return 1;
            };
            const self = gpa.create(Self) catch return 1;
            self.* = .{ .app = model, .flux = flux, .scene = c.xtk_scene_fromhost(host) };
            self.root = c.xtk_scene_root(&self.scene);
            c.flux_app_onframe(flux, frameCb, self);
            c.flux_app_redraw(flux);
            const code = c.flux_app_run(flux);
            c.flux_app_onframe(flux, null, null);
            self.flux = null;
            c.flux_host_destroy(host);
            c.flux_app_destroy(flux);
            if (self.tree) |t| t.destroy();
            self.queue.deinit(gpa);
            gpa.destroy(self);
            return @intCast(code & 0xff);
        }
    };
}
