const std = @import("std");
const zxent = @import("zxent");
const c = zxent.c;

pub fn main() void {
    const desc: *const c.XtkCtrlDesc = c.xtk_catalog_control(c.XTK_CTRL_BUTTON);
    std.debug.print("{s} props={d} events={d}\n", .{ std.mem.span(desc.name), desc.property_count, desc.event_count });
}
