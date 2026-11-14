const zx = @import("zxent");

const Counter = struct {
    n: i32 = 0,

    pub const Msg = union(enum) { inc, dec, reset };

    pub fn update(self: *Counter, msg: Msg) void {
        switch (msg) {
            .inc => self.n += 1,
            .dec => self.n -= 1,
            .reset => self.n = 0,
        }
    }

    pub fn view(self: *const Counter, ui: *zx.Ui(Counter)) zx.El(Counter) {
        const buttons = zx.container(ui).dir(.row).gap(8).items(.center)
            .child(zx.button(ui).text("−").w(48).onInvoke(.dec))
            .child(zx.button(ui).text("+").w(48).style(.accent).onInvoke(.inc))
            .child(zx.button(ui).text("Reset").style(.subtle).onInvoke(.reset));
        return zx.container(ui).dir(.column).grow(1).gap(16).pl(32).pt(32).pr(32).pb(32).items(.start)
            .child(zx.text(ui).text("Counter").fontsize(28).fontweight(.semi_bold))
            .child(zx.text(ui).text(ui.fmt("Value: {d}", .{self.n})).fontsize(20))
            .child(buttons).el;
    }
};

pub fn main() u8 {
    return zx.run(Counter, .{ .title = "zxent counter" }, .{});
}
