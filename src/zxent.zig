pub const c = @import("c");
const rt = @import("runtime.zig");

pub const Ui = rt.Ui;
pub const El = rt.El;
pub const ItemFn = rt.ItemFn;
pub const ScrollPos = rt.ScrollPos;
pub const Value = rt.Value;
pub const Theme = rt.Theme;
pub const Window = rt.Window;
pub const run = rt.run;

pub const FlexAlign = enum(c_int) {
    auto = c.XENT_FLEX_ALIGN_AUTO,
    start = c.XENT_FLEX_ALIGN_START,
    end = c.XENT_FLEX_ALIGN_END,
    center = c.XENT_FLEX_ALIGN_CENTER,
    stretch = c.XENT_FLEX_ALIGN_STRETCH,
    baseline = c.XENT_FLEX_ALIGN_BASELINE,
};

pub const FlexJustify = enum(c_int) {
    start = c.XENT_FLEX_JUSTIFY_START,
    end = c.XENT_FLEX_JUSTIFY_END,
    center = c.XENT_FLEX_JUSTIFY_CENTER,
    space_between = c.XENT_FLEX_JUSTIFY_SPACE_BETWEEN,
    space_around = c.XENT_FLEX_JUSTIFY_SPACE_AROUND,
    space_evenly = c.XENT_FLEX_JUSTIFY_SPACE_EVENLY,
};

pub const FlexWrap = enum(c_int) {
    no_wrap = c.XENT_FLEX_NO_WRAP,
    wrap = c.XENT_FLEX_WRAP,
};

pub const BadgeMode = enum(c_int) {
    dot = c.XTK_BADGE_DOT,
    number = c.XTK_BADGE_NUMBER,
    icon = c.XTK_BADGE_ICON,
};

pub const ButtonStyle = enum(c_int) {
    standard = c.XTK_BUTTON_STANDARD,
    subtle = c.XTK_BUTTON_SUBTLE,
    text = c.XTK_BUTTON_TEXT,
    accent = c.XTK_BUTTON_ACCENT,
};

pub const CalendarMode = enum(c_int) {
    single = c.XTK_CALENDAR_SINGLE,
    none = c.XTK_CALENDAR_NONE,
    multiple = c.XTK_CALENDAR_MULTIPLE,
};

pub const Clock = enum(c_int) {
    system = c.XTK_CLOCK_SYSTEM,
    h12 = c.XTK_CLOCK_12H,
    h24 = c.XTK_CLOCK_24H,
};

pub const FontWeight = enum(c_int) {
    thin = c.XTK_FONT_THIN,
    extra_light = c.XTK_FONT_EXTRA_LIGHT,
    light = c.XTK_FONT_LIGHT,
    regular = c.XTK_FONT_REGULAR,
    medium = c.XTK_FONT_MEDIUM,
    semi_bold = c.XTK_FONT_SEMI_BOLD,
    bold = c.XTK_FONT_BOLD,
    extra_bold = c.XTK_FONT_EXTRA_BOLD,
    black = c.XTK_FONT_BLACK,
};

pub const ImageStretch = enum(c_int) {
    none = c.XTK_IMAGE_NONE,
    fill = c.XTK_IMAGE_FILL,
    uniform = c.XTK_IMAGE_UNIFORM,
    uniform_to_fill = c.XTK_IMAGE_UNIFORM_TO_FILL,
};

pub const InfoBarSeverity = enum(c_int) {
    informational = c.XTK_INFOBAR_INFORMATIONAL,
    success = c.XTK_INFOBAR_SUCCESS,
    warning = c.XTK_INFOBAR_WARNING,
    @"error" = c.XTK_INFOBAR_ERROR,
};

pub const ListSelMode = enum(c_int) {
    single = c.XTK_LIST_SELECT_SINGLE,
    none = c.XTK_LIST_SELECT_NONE,
    multiple = c.XTK_LIST_SELECT_MULTIPLE,
    extended = c.XTK_LIST_SELECT_EXTENDED,
};

pub const PagerButtonVis = enum(c_int) {
    auto = c.XTK_PAGER_BUTTON_AUTO,
    always = c.XTK_PAGER_BUTTON_ALWAYS,
    hidden_edge = c.XTK_PAGER_BUTTON_HIDDEN_EDGE,
    none = c.XTK_PAGER_BUTTON_NONE,
};

pub const PagerDisplayMode = enum(c_int) {
    auto = c.XTK_PAGER_DISPLAY_AUTO,
    number_panel = c.XTK_PAGER_DISPLAY_NUMBER_PANEL,
    number_text = c.XTK_PAGER_DISPLAY_NUMBER_TEXT,
};

pub const PipsNavVis = enum(c_int) {
    collapsed = c.XTK_PIPS_NAV_COLLAPSED,
    visible = c.XTK_PIPS_NAV_VISIBLE,
    on_hover = c.XTK_PIPS_NAV_ON_HOVER,
};

pub const ProgressState = enum(c_int) {
    normal = c.XTK_PROGRESS_NORMAL,
    paused = c.XTK_PROGRESS_PAUSED,
    @"error" = c.XTK_PROGRESS_ERROR,
};

pub const PullDirection = enum(c_int) {
    top_to_bottom = c.XTK_PULL_TOP_TO_BOTTOM,
    left_to_right = c.XTK_PULL_LEFT_TO_RIGHT,
    right_to_left = c.XTK_PULL_RIGHT_TO_LEFT,
    bottom_to_top = c.XTK_PULL_BOTTOM_TO_TOP,
};

pub const ScrollBarIndicator = enum(c_int) {
    none = c.XTK_SCROLLBAR_INDICATOR_NONE,
    touch = c.XTK_SCROLLBAR_INDICATOR_TOUCH,
    mouse = c.XTK_SCROLLBAR_INDICATOR_MOUSE,
};

pub const SliderSnap = enum(c_int) {
    step = c.XTK_SLIDER_SNAP_STEP,
    ticks = c.XTK_SLIDER_SNAP_TICKS,
};

pub const Spectrum = enum(c_int) {
    hue_saturation = c.XTK_SPECTRUM_HUE_SATURATION,
    hue_value = c.XTK_SPECTRUM_HUE_VALUE,
    saturation_value = c.XTK_SPECTRUM_SATURATION_VALUE,
};

pub const SplitViewDisplayMode = enum(c_int) {
    @"inline" = c.XTK_SPLITVIEW_INLINE,
    compact_inline = c.XTK_SPLITVIEW_COMPACT_INLINE,
    overlay = c.XTK_SPLITVIEW_OVERLAY,
    compact_overlay = c.XTK_SPLITVIEW_COMPACT_OVERLAY,
};

pub const SplitViewPanePlacement = enum(c_int) {
    left = c.XTK_SPLITVIEW_LEFT,
    right = c.XTK_SPLITVIEW_RIGHT,
};

pub const StackDirection = enum(c_int) {
    column = c.XTK_STACK_COLUMN,
    row = c.XTK_STACK_ROW,
};

pub const TeachingTipPlacement = enum(c_int) {
    auto = c.XTK_TIP_PLACE_AUTO,
    top = c.XTK_TIP_PLACE_TOP,
    bottom = c.XTK_TIP_PLACE_BOTTOM,
    left = c.XTK_TIP_PLACE_LEFT,
    right = c.XTK_TIP_PLACE_RIGHT,
    top_right = c.XTK_TIP_PLACE_TOP_RIGHT,
    top_left = c.XTK_TIP_PLACE_TOP_LEFT,
    bottom_right = c.XTK_TIP_PLACE_BOTTOM_RIGHT,
    bottom_left = c.XTK_TIP_PLACE_BOTTOM_LEFT,
    left_top = c.XTK_TIP_PLACE_LEFT_TOP,
    left_bottom = c.XTK_TIP_PLACE_LEFT_BOTTOM,
    right_top = c.XTK_TIP_PLACE_RIGHT_TOP,
    right_bottom = c.XTK_TIP_PLACE_RIGHT_BOTTOM,
    center = c.XTK_TIP_PLACE_CENTER,
};

pub const TeachingTipTail = enum(c_int) {
    auto = c.XTK_TIP_TAIL_AUTO,
    visible = c.XTK_TIP_TAIL_VISIBLE,
    collapsed = c.XTK_TIP_TAIL_COLLAPSED,
};

pub const TextAlign = enum(c_int) {
    left = c.XTK_TEXT_LEFT,
    center = c.XTK_TEXT_CENTER,
    right = c.XTK_TEXT_RIGHT,
    justify = c.XTK_TEXT_JUSTIFY,
};

pub const TextTrim = enum(c_int) {
    none = c.XTK_TRIM_NONE,
    char = c.XTK_TRIM_CHAR,
    char_ellipsis = c.XTK_TRIM_CHAR_ELLIPSIS,
    word = c.XTK_TRIM_WORD,
    word_ellipsis = c.XTK_TRIM_WORD_ELLIPSIS,
};

pub const TickPlacement = enum(c_int) {
    @"inline" = c.XTK_TICK_INLINE,
    top_left = c.XTK_TICK_TOP_LEFT,
    bottom_right = c.XTK_TICK_BOTTOM_RIGHT,
    outside = c.XTK_TICK_OUTSIDE,
    none = c.XTK_TICK_NONE,
};

pub fn Container(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn container(ui: anytype) Container(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_CONTAINER) };
}

pub fn Text(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn fontsize(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_FONT_SIZE, .{ .f32 = v });
            return b;
        }
        pub fn fontweight(b: Self, v: FontWeight) Self {
            b.el.prop(c.XTK_PROP_FONT_WEIGHT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn textalign(b: Self, v: TextAlign) Self {
            b.el.prop(c.XTK_PROP_TEXT_ALIGN, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn fg(b: Self, v: u32) Self {
            b.el.prop(c.XTK_PROP_FOREGROUND, .{ .color = v });
            return b;
        }
        pub fn maxlines(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MAX_LINES, .{ .i32 = v });
            return b;
        }
        pub fn trim(b: Self, v: TextTrim) Self {
            b.el.prop(c.XTK_PROP_TEXT_TRIM, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn textwrap(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_TEXT_WRAP, .{ .bool = v });
            return b;
        }
        pub fn selectable(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTABLE, .{ .bool = v });
            return b;
        }
    };
}

pub fn text(ui: anytype) Text(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TEXT) };
}

pub fn Button(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn style(b: Self, v: ButtonStyle) Self {
            b.el.prop(c.XTK_PROP_BUTTON_STYLE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn button(ui: anytype) Button(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_BUTTON) };
}

pub fn Toggle(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn checked(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CHECKED, .{ .bool = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_BOOL, .{ .bool = f });
            return b;
        }
    };
}

pub fn toggle(ui: anytype) Toggle(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TOGGLE) };
}

pub fn Checkbox(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn checked(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CHECKED, .{ .bool = v });
            return b;
        }
        pub fn indeterminate(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_INDETERMINATE, .{ .bool = v });
            return b;
        }
        pub fn threestate(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_IS_THREE_STATE, .{ .bool = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_BOOL, .{ .bool = f });
            return b;
        }
        pub fn onState(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_I32, .{ .i32 = f });
            return b;
        }
    };
}

pub fn checkbox(ui: anytype) Checkbox(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_CHECKBOX) };
}

pub fn Radio(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn checked(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CHECKED, .{ .bool = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_BOOL, .{ .bool = f });
            return b;
        }
    };
}

pub fn radio(ui: anytype) Radio(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_RADIO) };
}

pub fn Switch(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn checked(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CHECKED, .{ .bool = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_BOOL, .{ .bool = f });
            return b;
        }
    };
}

pub fn @"switch"(ui: anytype) Switch(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SWITCH) };
}

pub fn Slider(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn min(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MIN_F32, .{ .f32 = v });
            return b;
        }
        pub fn max(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MAX_F32, .{ .f32 = v });
            return b;
        }
        pub fn value(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_VALUE_F32, .{ .f32 = v });
            return b;
        }
        pub fn step(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_STEP_F32, .{ .f32 = v });
            return b;
        }
        pub fn tick(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_TICK_FREQUENCY, .{ .f32 = v });
            return b;
        }
        pub fn tickplace(b: Self, v: TickPlacement) Self {
            b.el.prop(c.XTK_PROP_TICK_PLACEMENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn snapsto(b: Self, v: SliderSnap) Self {
            b.el.prop(c.XTK_PROP_SLIDER_SNAPS_TO, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn smallchange(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SMALL_CHANGE, .{ .f32 = v });
            return b;
        }
        pub fn largechange(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_LARGE_CHANGE, .{ .f32 = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn range(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_IS_RANGE, .{ .bool = v });
            return b;
        }
        pub fn rangestart(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_RANGE_START, .{ .f32 = v });
            return b;
        }
        pub fn rangeend(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_RANGE_END, .{ .f32 = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (f32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_F32, .{ .f32 = f });
            return b;
        }
        pub fn onRange(b: Self, f: *const fn (f32, f32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_RANGE, .{ .range = f });
            return b;
        }
    };
}

pub fn slider(ui: anytype) Slider(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SLIDER) };
}

pub fn Textbox(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn placeholder(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_PLACEHOLDER, .{ .str = v });
            return b;
        }
        pub fn multiline(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_MULTILINE, .{ .bool = v });
            return b;
        }
        pub fn readonly(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_READ_ONLY, .{ .bool = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn ([]const u8) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_STRING, .{ .str = f });
            return b;
        }
    };
}

pub fn textbox(ui: anytype) Textbox(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TEXTBOX) };
}

pub fn Scroll(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn x(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SCROLL_X, .{ .f32 = v });
            return b;
        }
        pub fn y(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SCROLL_Y, .{ .f32 = v });
            return b;
        }
        pub fn onScroll(b: Self, f: *const fn (rt.ScrollPos) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SCROLL, .{ .scroll = f });
            return b;
        }
    };
}

pub fn scroll(ui: anytype) Scroll(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SCROLL) };
}

pub fn Image(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn src(b: Self, v: u64) Self {
            b.el.prop(c.XTK_PROP_IMAGE_SOURCE, .{ .resource = v });
            return b;
        }
        pub fn fit(b: Self, v: ImageStretch) Self {
            b.el.prop(c.XTK_PROP_IMAGE_STRETCH, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn image(ui: anytype) Image(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_IMAGE) };
}

pub fn Progress(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn min(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MIN_F32, .{ .f32 = v });
            return b;
        }
        pub fn max(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MAX_F32, .{ .f32 = v });
            return b;
        }
        pub fn value(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_VALUE_F32, .{ .f32 = v });
            return b;
        }
        pub fn indeterminate(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_INDETERMINATE, .{ .bool = v });
            return b;
        }
        pub fn state(b: Self, v: ProgressState) Self {
            b.el.prop(c.XTK_PROP_PROGRESS_STATE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn border_width(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PROGRESS_BORDER_WIDTH, .{ .f32 = v });
            return b;
        }
    };
}

pub fn progress(ui: anytype) Progress(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_PROGRESS) };
}

pub fn List(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn itemw(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn ncol(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_COLUMN_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn mode(b: Self, v: ListSelMode) Self {
            b.el.prop(c.XTK_PROP_SELECTION_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn first(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_REALIZED_FIRST, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn items(b: Self, count: usize, f: rt.ItemFn(A)) Self {
            b.el.items(count, f);
            return b;
        }
    };
}

pub fn list(ui: anytype) List(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_LIST) };
}

pub fn Tab(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
    };
}

pub fn tab(ui: anytype) Tab(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TAB) };
}

pub fn Card(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn card(ui: anytype) Card(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_CARD) };
}

pub fn Divider(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
    };
}

pub fn divider(ui: anytype) Divider(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_DIVIDER) };
}

pub fn Canvas(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
    };
}

pub fn canvas(ui: anytype) Canvas(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_CANVAS) };
}

pub fn Password(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn placeholder(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_PLACEHOLDER, .{ .str = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn ([]const u8) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_STRING, .{ .str = f });
            return b;
        }
    };
}

pub fn password(ui: anytype) Password(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_PASSWORD) };
}

pub fn Number(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn value(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_VALUE_F64, .{ .f64 = v });
            return b;
        }
        pub fn min(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_MIN_F64, .{ .f64 = v });
            return b;
        }
        pub fn max(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_MAX_F64, .{ .f64 = v });
            return b;
        }
        pub fn step(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_STEP_F64, .{ .f64 = v });
            return b;
        }
        pub fn hidespin(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_HIDE_SPIN, .{ .bool = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (f64) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_F64, .{ .f64 = f });
            return b;
        }
    };
}

pub fn number(ui: anytype) Number(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_NUMBER) };
}

pub fn Link(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn url(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_URL, .{ .str = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn link(ui: anytype) Link(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_LINK) };
}

pub fn Repeat(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn style(b: Self, v: ButtonStyle) Self {
            b.el.prop(c.XTK_PROP_BUTTON_STYLE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn repeat(ui: anytype) Repeat(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_REPEAT) };
}

pub fn Progressring(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn min(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MIN_F32, .{ .f32 = v });
            return b;
        }
        pub fn max(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MAX_F32, .{ .f32 = v });
            return b;
        }
        pub fn value(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_VALUE_F32, .{ .f32 = v });
            return b;
        }
        pub fn indeterminate(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_INDETERMINATE, .{ .bool = v });
            return b;
        }
        pub fn state(b: Self, v: ProgressState) Self {
            b.el.prop(c.XTK_PROP_PROGRESS_STATE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn active(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_PROGRESS_ACTIVE, .{ .bool = v });
            return b;
        }
    };
}

pub fn progressring(ui: anytype) Progressring(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_PROGRESSRING) };
}

pub fn Badge(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn badgemode(b: Self, v: BadgeMode) Self {
            b.el.prop(c.XTK_PROP_BADGE_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn value(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_BADGE_VALUE, .{ .i32 = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
    };
}

pub fn badge(ui: anytype) Badge(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_BADGE) };
}

pub fn Tooltip(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn open(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_OPEN, .{ .bool = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
    };
}

pub fn tooltip(ui: anytype) Tooltip(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TOOLTIP) };
}

pub fn Flyout(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn open(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_OPEN, .{ .bool = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
    };
}

pub fn flyout(ui: anytype) Flyout(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_FLYOUT) };
}

pub fn Menufly(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn open(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_OPEN, .{ .bool = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
    };
}

pub fn menufly(ui: anytype) Menufly(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_MENUFLY) };
}

pub fn Dropdown(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn style(b: Self, v: ButtonStyle) Self {
            b.el.prop(c.XTK_PROP_BUTTON_STYLE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn dropdown(ui: anytype) Dropdown(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_DROPDOWN) };
}

pub fn Split(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn style(b: Self, v: ButtonStyle) Self {
            b.el.prop(c.XTK_PROP_BUTTON_STYLE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn split(ui: anytype) Split(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SPLIT) };
}

pub fn Combo(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn placeholder(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_PLACEHOLDER, .{ .str = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn editable(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_IS_EDITABLE, .{ .bool = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn onSubmit(b: Self, f: *const fn ([]const u8) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SUBMIT_STRING, .{ .str = f });
            return b;
        }
    };
}

pub fn combo(ui: anytype) Combo(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_COMBO) };
}

pub fn Expander(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn contenth(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_CONTENT_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn onToggle(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_TOGGLE, .{ .bool = f });
            return b;
        }
    };
}

pub fn expander(ui: anytype) Expander(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_EXPANDER) };
}

pub fn Exphead(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
    };
}

pub fn exphead(ui: anytype) Exphead(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_EXPHEAD) };
}

pub fn Expbody(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn expbody(ui: anytype) Expbody(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_EXPBODY) };
}

pub fn Infobar(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn message(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_MESSAGE, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn severity(b: Self, v: InfoBarSeverity) Self {
            b.el.prop(c.XTK_PROP_SEVERITY, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn closable(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CLOSABLE, .{ .bool = v });
            return b;
        }
        pub fn onClose(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CLOSE, .{ .i32 = f });
            return b;
        }
    };
}

pub fn infobar(ui: anytype) Infobar(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_INFOBAR) };
}

pub fn Dialog(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn primary(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_PRIMARY_TEXT, .{ .str = v });
            return b;
        }
        pub fn secondary(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_SECONDARY_TEXT, .{ .str = v });
            return b;
        }
        pub fn close(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_CLOSE_TEXT, .{ .str = v });
            return b;
        }
        pub fn contenth(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_CONTENT_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn open(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_OPEN, .{ .bool = v });
            return b;
        }
        pub fn onClose(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CLOSE, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn dialog(ui: anytype) Dialog(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_DIALOG) };
}

pub fn Dialogbody(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn dialogbody(ui: anytype) Dialogbody(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_DIALOGBODY) };
}

pub fn Menubar(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
    };
}

pub fn menubar(ui: anytype) Menubar(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_MENUBAR) };
}

pub fn Menuitem(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn menuitem(ui: anytype) Menuitem(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_MENUITEM) };
}

pub fn Nav(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn nav(ui: anytype) Nav(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_NAV) };
}

pub fn Navitem(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn navitem(ui: anytype) Navitem(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_NAVITEM) };
}

pub fn Tabs(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onClose(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CLOSE, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn tabs(ui: anytype) Tabs(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TABS) };
}

pub fn Tabitem(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn tabitem(ui: anytype) Tabitem(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TABITEM) };
}

pub fn Listitem(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn listitem(ui: anytype) Listitem(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_LISTITEM) };
}

pub fn Listbox(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn itemw(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn ncol(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_COLUMN_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn mode(b: Self, v: ListSelMode) Self {
            b.el.prop(c.XTK_PROP_SELECTION_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn first(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_REALIZED_FIRST, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn items(b: Self, count: usize, f: rt.ItemFn(A)) Self {
            b.el.items(count, f);
            return b;
        }
    };
}

pub fn listbox(ui: anytype) Listbox(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_LISTBOX) };
}

pub fn Gridview(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn itemw(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn ncol(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_COLUMN_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn mode(b: Self, v: ListSelMode) Self {
            b.el.prop(c.XTK_PROP_SELECTION_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn first(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_REALIZED_FIRST, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn items(b: Self, count: usize, f: rt.ItemFn(A)) Self {
            b.el.items(count, f);
            return b;
        }
    };
}

pub fn gridview(ui: anytype) Gridview(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_GRIDVIEW) };
}

pub fn Repeater(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn itemw(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn ncol(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_COLUMN_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn mode(b: Self, v: ListSelMode) Self {
            b.el.prop(c.XTK_PROP_SELECTION_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn first(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_REALIZED_FIRST, .{ .i32 = v });
            return b;
        }
        pub fn items(b: Self, count: usize, f: rt.ItemFn(A)) Self {
            b.el.items(count, f);
            return b;
        }
    };
}

pub fn repeater(ui: anytype) Repeater(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_REPEATER) };
}

pub fn Itemsview(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn itemw(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn ncol(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_COLUMN_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn mode(b: Self, v: ListSelMode) Self {
            b.el.prop(c.XTK_PROP_SELECTION_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn invoked(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ITEM_INVOKED_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn first(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_REALIZED_FIRST, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn items(b: Self, count: usize, f: rt.ItemFn(A)) Self {
            b.el.items(count, f);
            return b;
        }
    };
}

pub fn itemsview(ui: anytype) Itemsview(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_ITEMSVIEW) };
}

pub fn Flip(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn flip(ui: anytype) Flip(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_FLIP) };
}

pub fn Pips(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn maxvisible(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MAX_VISIBLE, .{ .i32 = v });
            return b;
        }
        pub fn nav(b: Self, v: PipsNavVis) Self {
            b.el.prop(c.XTK_PROP_NAV_VISIBILITY, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn pips(ui: anytype) Pips(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_PIPS) };
}

pub fn Suggest(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn placeholder(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_PLACEHOLDER, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn ([]const u8) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_STRING, .{ .str = f });
            return b;
        }
        pub fn onQuery(b: Self, f: *const fn ([]const u8, i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_QUERY, .{ .query = f });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
    };
}

pub fn suggest(ui: anytype) Suggest(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SUGGEST) };
}

pub fn Togglesplit(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn checked(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CHECKED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_BOOL, .{ .bool = f });
            return b;
        }
    };
}

pub fn togglesplit(ui: anytype) Togglesplit(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TOGGLESPLIT) };
}

pub fn Radiogroup(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn ncol(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_COLUMN_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn radiogroup(ui: anytype) Radiogroup(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_RADIOGROUP) };
}

pub fn Rating(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn value(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_VALUE_F64, .{ .f64 = v });
            return b;
        }
        pub fn max(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_MAX_F64, .{ .f64 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn placeholder(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_PLACEHOLDER_F64, .{ .f64 = v });
            return b;
        }
        pub fn initial(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_INITIAL_VALUE, .{ .i32 = v });
            return b;
        }
        pub fn clear(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_CLEAR_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn readonly(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_READ_ONLY, .{ .bool = v });
            return b;
        }
        pub fn onRating(b: Self, f: *const fn (f64, i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_RATING_CHANGED, .{ .rating = f });
            return b;
        }
    };
}

pub fn rating(ui: anytype) Rating(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_RATING) };
}

pub fn Selector(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn selector(ui: anytype) Selector(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SELECTOR) };
}

pub fn Selectoritem(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn selectoritem(ui: anytype) Selectoritem(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SELECTORITEM) };
}

pub fn Breadcrumb(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn breadcrumb(ui: anytype) Breadcrumb(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_BREADCRUMB) };
}

pub fn Crumb(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn crumb(ui: anytype) Crumb(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_CRUMB) };
}

pub fn Teachtip(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn subtitle(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_SUBTITLE, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn action(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ACTION_TEXT, .{ .str = v });
            return b;
        }
        pub fn actionaccent(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ACTION_ACCENT, .{ .bool = v });
            return b;
        }
        pub fn close(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_CLOSE_TEXT, .{ .str = v });
            return b;
        }
        pub fn placement(b: Self, v: TeachingTipPlacement) Self {
            b.el.prop(c.XTK_PROP_PLACEMENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn untargeted(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_UNTARGETED, .{ .bool = v });
            return b;
        }
        pub fn lightdismiss(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_LIGHT_DISMISS, .{ .bool = v });
            return b;
        }
        pub fn tail(b: Self, v: TeachingTipTail) Self {
            b.el.prop(c.XTK_PROP_TAIL_VISIBILITY, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn placementmargin(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PLACEMENT_MARGIN, .{ .f32 = v });
            return b;
        }
        pub fn open(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_OPEN, .{ .bool = v });
            return b;
        }
        pub fn onClose(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CLOSE, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn teachtip(ui: anytype) Teachtip(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TEACHTIP) };
}

pub fn Tree(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn onExpand(b: Self, f: *const fn (i32, bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_TREE_EXPAND, .{ .index_bool = f });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32, bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_TREE_SELECT, .{ .index_bool = f });
            return b;
        }
    };
}

pub fn tree(ui: anytype) Tree(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TREE) };
}

pub fn Treeitem(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn selected(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SELECTED, .{ .bool = v });
            return b;
        }
        pub fn expanded(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_EXPANDED, .{ .bool = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn treeitem(ui: anytype) Treeitem(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TREEITEM) };
}

pub fn Refresh(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn direction(b: Self, v: PullDirection) Self {
            b.el.prop(c.XTK_PROP_PULL_DIRECTION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn visualizer(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_VISUALIZER_SIZE, .{ .f32 = v });
            return b;
        }
        pub fn threshold(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_THRESHOLD_RATIO, .{ .f32 = v });
            return b;
        }
        pub fn refreshing(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_REFRESHING, .{ .bool = v });
            return b;
        }
        pub fn onRefresh(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_REFRESH, .{ .i32 = f });
            return b;
        }
    };
}

pub fn refresh(ui: anytype) Refresh(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_REFRESH) };
}

pub fn Avatar(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn initials(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_INITIALS, .{ .str = v });
            return b;
        }
        pub fn src(b: Self, v: u64) Self {
            b.el.prop(c.XTK_PROP_IMAGE_SOURCE, .{ .resource = v });
            return b;
        }
        pub fn badgeglyph(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_BADGE_GLYPH, .{ .str = v });
            return b;
        }
        pub fn badgevalue(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_BADGE_VALUE, .{ .i32 = v });
            return b;
        }
        pub fn group(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_IS_GROUP, .{ .bool = v });
            return b;
        }
    };
}

pub fn avatar(ui: anytype) Avatar(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_AVATAR) };
}

pub fn Pager(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn display(b: Self, v: PagerDisplayMode) Self {
            b.el.prop(c.XTK_PROP_DISPLAY_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn first(b: Self, v: PagerButtonVis) Self {
            b.el.prop(c.XTK_PROP_FIRST_BUTTON, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn prev(b: Self, v: PagerButtonVis) Self {
            b.el.prop(c.XTK_PROP_PREVIOUS_BUTTON, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn next(b: Self, v: PagerButtonVis) Self {
            b.el.prop(c.XTK_PROP_NEXT_BUTTON, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn last(b: Self, v: PagerButtonVis) Self {
            b.el.prop(c.XTK_PROP_LAST_BUTTON, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn prefix(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_PREFIX, .{ .str = v });
            return b;
        }
        pub fn suffix(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_SUFFIX, .{ .str = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn pager(ui: anytype) Pager(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_PAGER) };
}

pub fn Splitview(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn open(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_OPEN, .{ .bool = v });
            return b;
        }
        pub fn display(b: Self, v: SplitViewDisplayMode) Self {
            b.el.prop(c.XTK_PROP_DISPLAY_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn placement(b: Self, v: SplitViewPanePlacement) Self {
            b.el.prop(c.XTK_PROP_PANE_PLACEMENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn openlen(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_OPEN_PANE_LENGTH, .{ .f32 = v });
            return b;
        }
        pub fn compactlen(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_COMPACT_PANE_LENGTH, .{ .f32 = v });
            return b;
        }
    };
}

pub fn splitview(ui: anytype) Splitview(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SPLITVIEW) };
}

pub fn Splitpane(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn splitpane(ui: anytype) Splitpane(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SPLITPANE) };
}

pub fn Splitbody(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn items(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_ITEMS, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn justify(b: Self, v: FlexJustify) Self {
            b.el.prop(c.XTK_PROP_JUSTIFY_CONTENT, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn gap(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GAP, .{ .f32 = v });
            return b;
        }
        pub fn pl(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn pt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_TOP, .{ .f32 = v });
            return b;
        }
        pub fn pr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn pb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_PADDING_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn fill(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FILL, .{ .bool = v });
            return b;
        }
        pub fn fitw(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_WIDTH, .{ .bool = v });
            return b;
        }
        pub fn fith(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_FIT_HEIGHT, .{ .bool = v });
            return b;
        }
        pub fn wrap(b: Self, v: FlexWrap) Self {
            b.el.prop(c.XTK_PROP_WRAP, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
    };
}

pub fn splitbody(ui: anytype) Splitbody(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SPLITBODY) };
}

pub fn Titlebar(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn shrink(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SHRINK, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn text(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TEXT, .{ .str = v });
            return b;
        }
        pub fn subtitle(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_SUBTITLE, .{ .str = v });
            return b;
        }
        pub fn icon(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_ICON, .{ .str = v });
            return b;
        }
        pub fn showback(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SHOW_BACK, .{ .bool = v });
            return b;
        }
        pub fn backdisabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_BACK_DISABLED, .{ .bool = v });
            return b;
        }
        pub fn showtoggle(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SHOW_PANE_TOGGLE, .{ .bool = v });
            return b;
        }
        pub fn integrate(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_INTEGRATE_WINDOW, .{ .bool = v });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
        pub fn onToggle(b: Self, f: *const fn (bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_TOGGLE, .{ .bool = f });
            return b;
        }
    };
}

pub fn titlebar(ui: anytype) Titlebar(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TITLEBAR) };
}

pub fn Scrollbar(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn dir(b: Self, v: StackDirection) Self {
            b.el.prop(c.XTK_PROP_ORIENTATION, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn min(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_MIN_F64, .{ .f64 = v });
            return b;
        }
        pub fn max(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_MAX_F64, .{ .f64 = v });
            return b;
        }
        pub fn value(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_VALUE_F64, .{ .f64 = v });
            return b;
        }
        pub fn viewport(b: Self, v: f64) Self {
            b.el.prop(c.XTK_PROP_VIEWPORT_SIZE, .{ .f64 = v });
            return b;
        }
        pub fn smallchange(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_SMALL_CHANGE, .{ .f32 = v });
            return b;
        }
        pub fn largechange(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_LARGE_CHANGE, .{ .f32 = v });
            return b;
        }
        pub fn indicator(b: Self, v: ScrollBarIndicator) Self {
            b.el.prop(c.XTK_PROP_INDICATOR_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onChange(b: Self, f: *const fn (f64) A.Msg) Self {
            b.el.on(c.XTK_EVENT_CHANGE_F64, .{ .f64 = f });
            return b;
        }
    };
}

pub fn scrollbar(ui: anytype) Scrollbar(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_SCROLLBAR) };
}

pub fn Looping(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn nitem(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_ITEM_COUNT, .{ .i32 = v });
            return b;
        }
        pub fn sel(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_SELECTED_INDEX, .{ .i32 = v });
            return b;
        }
        pub fn itemh(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn itemw(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_ITEM_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn loop(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_SHOULD_LOOP, .{ .bool = v });
            return b;
        }
        pub fn onSelect(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_SELECT, .{ .i32 = f });
            return b;
        }
        pub fn onInvoke(b: Self, msg: A.Msg) Self {
            b.el.on(c.XTK_EVENT_INVOKE, .{ .value = msg });
            return b;
        }
    };
}

pub fn looping(ui: anytype) Looping(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_LOOPING) };
}

pub fn Datepicker(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn header(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_HEADER, .{ .str = v });
            return b;
        }
        pub fn date(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_DATE, .{ .i32 = v });
            return b;
        }
        pub fn minyear(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MIN_YEAR, .{ .i32 = v });
            return b;
        }
        pub fn maxyear(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MAX_YEAR, .{ .i32 = v });
            return b;
        }
        pub fn onValue(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_VALUE_CHANGED, .{ .i32 = f });
            return b;
        }
    };
}

pub fn datepicker(ui: anytype) Datepicker(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_DATEPICKER) };
}

pub fn Timepicker(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn header(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_HEADER, .{ .str = v });
            return b;
        }
        pub fn time(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_TIME, .{ .i32 = v });
            return b;
        }
        pub fn clock(b: Self, v: Clock) Self {
            b.el.prop(c.XTK_PROP_CLOCK, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn step(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MINUTE_INCREMENT, .{ .i32 = v });
            return b;
        }
        pub fn onValue(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_VALUE_CHANGED, .{ .i32 = f });
            return b;
        }
    };
}

pub fn timepicker(ui: anytype) Timepicker(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_TIMEPICKER) };
}

pub fn Calendar(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn date(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_DATE, .{ .i32 = v });
            return b;
        }
        pub fn mode(b: Self, v: CalendarMode) Self {
            b.el.prop(c.XTK_PROP_SELECTION_MODE, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn mindate(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MIN_DATE, .{ .i32 = v });
            return b;
        }
        pub fn maxdate(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_MAX_DATE, .{ .i32 = v });
            return b;
        }
        pub fn firstday(b: Self, v: i32) Self {
            b.el.prop(c.XTK_PROP_FIRST_DAY, .{ .i32 = v });
            return b;
        }
        pub fn onDate(b: Self, f: *const fn (i32, bool) A.Msg) Self {
            b.el.on(c.XTK_EVENT_DATE_SELECT, .{ .index_bool = f });
            return b;
        }
    };
}

pub fn calendar(ui: anytype) Calendar(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_CALENDAR) };
}

pub fn Colorpicker(comptime A: type) type {
    return struct {
        el: rt.El(A),
        const Self = @This();
        pub fn key(b: Self, k: u64) Self {
            b.el.key(k);
            return b;
        }
        pub fn child(b: Self, kid: anytype) Self {
            b.el.child(rt.toEl(A, kid));
            return b;
        }
        pub fn w(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_WIDTH, .{ .f32 = v });
            return b;
        }
        pub fn h(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_HEIGHT, .{ .f32 = v });
            return b;
        }
        pub fn grow(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_GROW, .{ .f32 = v });
            return b;
        }
        pub fn self(b: Self, v: FlexAlign) Self {
            b.el.prop(c.XTK_PROP_ALIGN_SELF, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn ml(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_LEFT, .{ .f32 = v });
            return b;
        }
        pub fn mt(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_TOP, .{ .f32 = v });
            return b;
        }
        pub fn mr(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_RIGHT, .{ .f32 = v });
            return b;
        }
        pub fn mb(b: Self, v: f32) Self {
            b.el.prop(c.XTK_PROP_MARGIN_BOTTOM, .{ .f32 = v });
            return b;
        }
        pub fn tip(b: Self, v: []const u8) Self {
            b.el.prop(c.XTK_PROP_TOOLTIP, .{ .str = v });
            return b;
        }
        pub fn enabled(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn color(b: Self, v: u32) Self {
            b.el.prop(c.XTK_PROP_COLOR, .{ .color = v });
            return b;
        }
        pub fn alpha(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_ALPHA_ENABLED, .{ .bool = v });
            return b;
        }
        pub fn morebutton(b: Self, v: bool) Self {
            b.el.prop(c.XTK_PROP_MORE_BUTTON_VISIBLE, .{ .bool = v });
            return b;
        }
        pub fn spectrum(b: Self, v: Spectrum) Self {
            b.el.prop(c.XTK_PROP_SPECTRUM, .{ .enumeration = @intCast(@intFromEnum(v)) });
            return b;
        }
        pub fn onValue(b: Self, f: *const fn (i32) A.Msg) Self {
            b.el.on(c.XTK_EVENT_VALUE_CHANGED, .{ .i32 = f });
            return b;
        }
    };
}

pub fn colorpicker(ui: anytype) Colorpicker(@TypeOf(ui.*).App) {
    return .{ .el = ui.el(c.XTK_CTRL_COLORPICKER) };
}
