const std = @import("std");
const Translator = @import("translate_c").Translator;

const libs = [_][]const u8{
    "fluxent",
    "xtk",
    "xent_core",
    "cwinrt-rt",
    "cwinrt-bindings-foundation",
    "cwinrt-bindings-ui-composition",
    "cwinrt-bindings-ui-composition-interactions",
    "cwinrt-bindings-ui-viewmanagement",
    "cwinrt-bindings-globalization",
    "cwinrt-bindings-globalization-datetimeformatting",
    "cwinrt-bindings-globalization-numberformatting",
    "cwinrt-bindings-ui-input",
};

const syslinks = [_][]const u8{
    "user32",  "gdi32",         "dcomp",            "d2d1",                         "d3d11",                               "dxgi",          "dwrite",
    "dwmapi",  "ole32",         "oleaut32",         "uuid",                         "uxtheme",                             "imm32",         "advapi32",
    "shell32", "coremessaging", "uiautomationcore", "api-ms-win-core-winrt-l1-1-0", "api-ms-win-core-winrt-string-l1-1-0", "windowscodecs",
};

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const xent = b.option([]const u8, "xent", "Directory holding xent-core, xent-kit and fluxent") orelse "..";
    const bundle = b.option([]const u8, "xent-bundle", "Root of an extracted xent release bundle");
    const tree_arch = if (target.result.cpu.arch == .aarch64) "arm64" else "x86_64";
    const lib_dir = if (bundle) |root| b.fmt("{s}/lib", .{root}) else b.fmt("{s}/fluxent/build/mingw/{s}/{s}", .{ xent, tree_arch, if (optimize == .debug) "debug" else "release" });

    const t: Translator = .init(b.dependency("translate_c", .{}), .{
        .c_source_file = b.path("xent.h"),
        .target = target,
        .optimize = optimize,
    });
    if (bundle) |root| {
        t.addIncludePath(.{ .cwd_relative = b.fmt("{s}/include", .{root}) });
    } else for ([_][]const u8{ "xent-kit", "xent-core", "fluxent" }) |pkg| {
        t.addIncludePath(.{ .cwd_relative = b.fmt("{s}/{s}/include", .{ xent, pkg }) });
    }

    const zxent = b.addModule("zxent", .{
        .root_source_file = b.path("src/zxent.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    zxent.addImport("c", t.mod);
    zxent.addLibraryPath(.{ .cwd_relative = lib_dir });
    for (if (bundle != null) &[_][]const u8{"xent"} else &libs) |lib| zxent.linkSystemLibrary(lib, .{ .preferred_link_mode = .static });
    for (syslinks) |lib| zxent.linkSystemLibrary(lib, .{});

    for ([_][]const u8{ "catalog", "counter", "virtual_list" }) |name| {
        const exe_mod = b.createModule(.{
            .root_source_file = b.path(b.fmt("examples/{s}.zig", .{name})),
            .target = target,
            .optimize = optimize,
        });
        exe_mod.addImport("zxent", zxent);
        const exe = b.addExecutable(.{ .name = name, .root_module = exe_mod });
        if (!std.mem.eql(u8, name, "catalog")) exe.subsystem = .windows;
        b.installArtifact(exe);
        const run = b.addRunArtifact(exe);
        b.step(b.fmt("run-{s}", .{name}), b.fmt("Run the {s} example", .{name})).dependOn(&run.step);
    }
}
