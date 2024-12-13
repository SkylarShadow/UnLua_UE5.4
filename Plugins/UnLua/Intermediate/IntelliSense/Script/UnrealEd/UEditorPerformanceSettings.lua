---Settings to tweak the performance of the editor
---@class UEditorPerformanceSettings : UDeveloperSettings
---@field public bShowFrameRateAndMemory boolean @When enabled, the application frame rate, memory and Unreal object count will be displayed in the main editor UI
---@field public bThrottleCPUWhenNotForeground boolean @Lowers CPU usage when the editor is in the background and not the active application
---@field public bDisableRealtimeViewportsInRemoteSessions boolean @Disables realtime viewports by default when connected via a remote session
---@field public bMonitorEditorPerformance boolean @When turned on, the editor will constantly monitor performance and adjust scalability settings for you when performance drops (disabled in debug)
---@field public bEnableScalabilityWarningIndicator boolean @When enabled, a warning will appear in the viewport when your editors scalability settings are non-default and you may be viewing a low quality scene
---@field public bEnableVSync boolean @Should VSync be enabled in editor?
---@field public bDisplayHighDPIViewports boolean @By default the editor will adjust scene scaling (quality) for high DPI in order to ensure consistent performance with very large render targets. Enabling this will disable automatic adjusting and render at the full resolution of the viewport
---@field public bOverridePIEScreenPercentage boolean
---@field public RealtimeScreenPercentageMode EEditorUserScreenPercentageModeOverride
---@field public MobileScreenPercentageMode EEditorUserScreenPercentageModeOverride
---@field public VRScreenPercentageMode EEditorUserScreenPercentageModeOverride
---@field public PathTracerScreenPercentageMode EEditorUserScreenPercentageModeOverride
---@field public NonRealtimeScreenPercentageMode EEditorUserScreenPercentageModeOverride
---@field public bOverrideManualScreenPercentage boolean
---@field public ManualScreenPercentage number @Editor viewport screen percentage
---@field public bOverrideMinViewportRenderingResolution boolean
---@field public MinViewportRenderingResolution integer
---@field public bOverrideMaxViewportRenderingResolution boolean
---@field public MaxViewportRenderingResolution integer
local UEditorPerformanceSettings = {}
