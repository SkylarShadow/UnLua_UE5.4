---Developer settings for Enhanced Input
---@class UEnhancedInputDeveloperSettings : UDeveloperSettingsBackedByCVars
---@field public DefaultMappingContexts TArray<FDefaultContextSetting> @Array of any input mapping contexts that you want to be applied by default to the Enhanced Input local player subsystem. NOTE: These mapping context's can only be from your game's root content directory, not plugins.
---@field public DefaultWorldSubsystemMappingContexts TArray<FDefaultContextSetting> @Array of any input mapping contexts that you want to be applied by default to the Enhanced Input world subsystem. NOTE: These mapping context's can only be from your game's root content directory, not plugins.
---@field public PlatformSettings FPerPlatformSettings @Platform specific settings for Enhanced Input.
---@field public UserSettingsClass TSoftClassPtr<UEnhancedInputUserSettings> @The class that should be used for the User Settings by each Enhanced Input subsystem. An instance of this class will be spawned by each Enhanced Input subsytem as a place to store user settings such as keymappings, accessibility settings, etc. Subclass this to add more custom options to your game. Note: This is a new experimental feature!
---@field public DefaultPlayerMappableKeyProfileClass TSoftClassPtr<UEnhancedPlayerMappableKeyProfile> @The default class for the player mappable key profile, used to store the key mappings set by the player in the user settings. Note: This is a new experimental feature!
---@field public DefaultWorldInputClass TSoftClassPtr<UEnhancedPlayerInput> @The default player input class that the Enhanced Input world subsystem will use.
---@field public bSendTriggeredEventsWhenInputIsFlushed boolean @If true, then any in progress Enhanced Input Actions will fire Cancelled and Triggered events when input is flushed (i.e. the viewport has lost focus, or UEnhancedPlayerInput::FlushPressedKeys has been called) If false, then enhanced input actions may not fire their delegates when input is flushed and their key state would be retained.
---@field public bEnableUserSettings boolean @If true, then an instance of the User Settings Class will be created on each Enhanced Input subsystem. Note: This is a new experimental feature!
---@field public bEnableDefaultMappingContexts boolean @If true, then the DefaultMappingContexts will be applied to all Enhanced Input Subsystems.
---@field public bShouldOnlyTriggerLastActionInChord boolean @If true, then only the last action in a ChordedAction trigger will be fired. This means that only the action that has the ChordedTrigger on it will be fired, not the individual steps. Default value is true.
---@field public bLogOnDeprecatedConfigUsed boolean @If true, then a warning will be logged when a UPlayerMappableInputConfig that has been marked as deprecated is used.
---@field public bEnableWorldSubsystem boolean @If true, then the world subsystem will be created.
---@field public bShouldLogAllWorldSubsystemInputs boolean @If true then the Enhanced Input world subsystem will log all input that is being processed by it (keypresses, analog values, etc) Note: This can produce A LOT of logs, so only use this if you are debugging something. Does nothing in shipping builds
local UEnhancedInputDeveloperSettings = {}

