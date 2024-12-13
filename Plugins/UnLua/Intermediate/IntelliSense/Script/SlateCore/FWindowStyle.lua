---Represents the appearance of an SWindow
---@class FWindowStyle : FSlateWidgetStyle
---@field public MinimizeButtonStyle FButtonStyle @Style used to draw the window minimize button
---@field public MaximizeButtonStyle FButtonStyle @Style used to draw the window maximize button
---@field public RestoreButtonStyle FButtonStyle @Style used to draw the window restore button
---@field public CloseButtonStyle FButtonStyle @Style used to draw the window close button
---@field public TitleTextStyle FTextBlockStyle @Style used to draw the window title text
---@field public ActiveTitleBrush FSlateBrush @Brush used to draw the window title area when the window is active
---@field public InactiveTitleBrush FSlateBrush @Brush used to draw the window title area when the window is inactive
---@field public FlashTitleBrush FSlateBrush @Brush used to draw the window title area when the window is flashing
---@field public BackgroundColor FSlateColor @Color used to draw the window background
---@field public OutlineBrush FSlateBrush @Brush used to draw the window outline
---@field public OutlineColor FSlateColor @Color used to draw the window outline
---@field public BorderBrush FSlateBrush @Brush used to draw the window border
---@field public BorderColor FSlateColor @Color used to draw the window border
---@field public BackgroundBrush FSlateBrush @Brush used to draw the window background
---@field public ChildBackgroundBrush FSlateBrush @Brush used to draw the background of child windows
---@field public WindowCornerRadius integer @Window corner rounding.  If this value is <= 0 no rounding will occur.   Used for regular, non-maximized windows only (not tool-tips or decorators.)
---@field public BorderPadding FMargin @Window corner rounding.  If this value is <= 0 no rounding will occur.   Used for regular, non-maximized windows only (not tool-tips or decorators.)
local FWindowStyle = {}