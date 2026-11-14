const zx = @import("zxent");

const Rows = struct {
    selected: i32 = -1,

    pub const Msg = union(enum) { select: i32 };

    fn select(i: i32) Msg {
        return .{ .select = i };
    }

    pub fn update(self: *Rows, msg: Msg) void {
        switch (msg) {
            .select => |i| self.selected = i,
        }
    }

    fn row(ui: *zx.Ui(Rows), i: usize) zx.El(Rows) {
        return zx.container(ui).dir(.row).gap(12).items(.center)
            .child(zx.text(ui).text(ui.fmt("{d}", .{i})).w(72).fontsize(12))
            .child(zx.text(ui).text(ui.fmt("Item number {d}", .{i})).fontsize(14)).el;
    }

    pub fn view(self: *const Rows, ui: *zx.Ui(Rows)) zx.El(Rows) {
        const status = if (self.selected >= 0) ui.fmt("Selected row: {d}", .{self.selected}) else "Nothing selected yet.";
        return zx.container(ui).dir(.column).grow(1).gap(12).pl(32).pt(32).pr(32).pb(32)
            .child(zx.text(ui).text("100,000 rows").fontsize(28).fontweight(.semi_bold))
            .child(zx.text(ui).text(status))
            .child(zx.list(ui).grow(1).itemh(40).mode(.single).sel(self.selected).onSelect(select).items(100_000, row))
            .el;
    }
};

pub fn main() u8 {
    return zx.run(Rows, .{ .title = "zxent virtual list" }, .{});
}
