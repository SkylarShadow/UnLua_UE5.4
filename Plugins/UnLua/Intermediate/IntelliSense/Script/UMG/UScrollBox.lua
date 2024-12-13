---An arbitrary scrollable collection of widgets.  Great for presenting 10-100 widgets in a list.  Doesn't support virtualization.
---@class UScrollBox : UPanelWidget
---@field public WidgetStyle FScrollBoxStyle @The style
---@field public WidgetBarStyle FScrollBarStyle @The bar style
---@field public Orientation integer @The orientation of the scrolling and stacking in the box.
---@field public ScrollBarVisibility ESlateVisibility @Visibility
---@field public ConsumeMouseWheel EConsumeMouseWheel @When mouse wheel events should be consumed.
---@field public ScrollbarThickness FVector2D @The thickness of the scrollbar thumb
---@field public ScrollbarPadding FMargin @The margin around the scrollbar
---@field public AlwaysShowScrollbar boolean
---@field public AlwaysShowScrollbarTrack boolean
---@field public AllowOverscroll boolean @Disable to stop scrollbars from activating inertial overscrolling
---@field public BackPadScrolling boolean @Whether to back pad this scroll box, allowing user to scroll backward until child contents are no longer visible
---@field public FrontPadScrolling boolean @Whether to front pad this scroll box, allowing user to scroll forward until child contents are no longer visible
---@field public bAnimateWheelScrolling boolean @True to lerp smoothly when wheel scrolling along the scroll box
---@field public NavigationDestination EDescendantScrollDestination @Sets where to scroll a widget to when using explicit navigation or if ScrollWhenFocusChanges is enabled
---@field public NavigationScrollPadding number @The amount of padding to ensure exists between the item being navigated to, at the edge of the scrollbox.  Use this if you want to ensure there's a preview of the next item the user could scroll to.
---@field public ScrollWhenFocusChanges EScrollWhenFocusChanges @Scroll behavior when user focus is given to a child widget
---@field public bAllowRightClickDragScrolling boolean @Option to disable right-click-drag scrolling
---@field public WheelScrollMultiplier number @The multiplier to apply when wheel scrolling
---@field public OnUserScrolled MulticastDelegate @Called when the scroll has changed
---@field public OnScrollBarVisibilityChanged MulticastDelegate @Called when the scrollbar visibility has changed
local UScrollBox = {}

---@param NewWheelScrollMultiplier number
function UScrollBox:SetWheelScrollMultiplier(NewWheelScrollMultiplier) end

---@param NewScrollWhenFocusChanges EScrollWhenFocusChanges
function UScrollBox:SetScrollWhenFocusChanges(NewScrollWhenFocusChanges) end

---Updates the scroll offset of the scrollbox.
---@param NewScrollOffset number
function UScrollBox:SetScrollOffset(NewScrollOffset) end

---@param NewScrollBarVisibility ESlateVisibility
function UScrollBox:SetScrollBarVisibility(NewScrollBarVisibility) end

---@param NewScrollbarThickness FVector2D
function UScrollBox:SetScrollbarThickness(NewScrollbarThickness) end

---@param NewScrollbarPadding FMargin
function UScrollBox:SetScrollbarPadding(NewScrollbarPadding) end

---@param NewOrientation integer
function UScrollBox:SetOrientation(NewOrientation) end

---@param NewNavigationDestination EDescendantScrollDestination
function UScrollBox:SetNavigationDestination(NewNavigationDestination) end

---@param NewConsumeMouseWheel EConsumeMouseWheel
function UScrollBox:SetConsumeMouseWheel(NewConsumeMouseWheel) end

---@param bShouldAnimateWheelScrolling boolean
function UScrollBox:SetAnimateWheelScrolling(bShouldAnimateWheelScrolling) end

---@param NewAlwaysShowScrollbar boolean
function UScrollBox:SetAlwaysShowScrollbar(NewAlwaysShowScrollbar) end

---@param NewAllowOverscroll boolean
function UScrollBox:SetAllowOverscroll(NewAllowOverscroll) end

---Scrolls the ScrollBox to the widget during the next layout pass.
---@param WidgetToFind UWidget
---@param AnimateScroll boolean @[opt] 
---@param ScrollDestination EDescendantScrollDestination @[opt] 
---@param Padding number @[opt] 
function UScrollBox:ScrollWidgetIntoView(WidgetToFind, AnimateScroll, ScrollDestination, Padding) end

---Scrolls the ScrollBox to the top instantly
function UScrollBox:ScrollToStart() end

---Scrolls the ScrollBox to the bottom instantly during the next layout pass.
function UScrollBox:ScrollToEnd() end

---@return number
function UScrollBox:GetViewOffsetFraction() end

---Gets the fraction currently visible in the scrollbox
---@return number
function UScrollBox:GetViewFraction() end

---Gets the scroll offset of the bottom of the ScrollBox in Slate Units.
---@return number
function UScrollBox:GetScrollOffsetOfEnd() end

---Gets the scroll offset of the scrollbox in Slate Units.
---@return number
function UScrollBox:GetScrollOffset() end

---Instantly stops any inertial scrolling that is currently in progress
function UScrollBox:EndInertialScrolling() end

