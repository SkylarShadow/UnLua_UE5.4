---@class UEnhancedInputSubsystemInterface : UInterface
local UEnhancedInputSubsystemInterface = {}

---Update the value of a continuous input injection for the given player mapping name, preserving the state of triggers and modifiers.
---@param MappingName string
---@param RawValue FInputActionValue
function UEnhancedInputSubsystemInterface:UpdateValueOfContinuousInputInjectionForPlayerMapping(MappingName, RawValue) end

---Update the value of a continuous input injection, preserving the state of triggers and modifiers.
---@param Action UInputAction
---@param RawValue FInputActionValue
function UEnhancedInputSubsystemInterface:UpdateValueOfContinuousInputInjectionForAction(Action, RawValue) end

---Stops continuous input injection for the given player mapping name.
---@param MappingName string
function UEnhancedInputSubsystemInterface:StopContinuousInputInjectionForPlayerMapping(MappingName) end

---Stops continuous input injection for the given action.
---@param Action UInputAction
function UEnhancedInputSubsystemInterface:StopContinuousInputInjectionForAction(Action) end

---Starts simulation of input via injection. This injects the given input every tick until it is stopped with StopContinuousInputInjectionForAction.
---@param MappingName string
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputSubsystemInterface:StartContinuousInputInjectionForPlayerMapping(MappingName, RawValue, Modifiers, Triggers) end

---Starts simulation of input via injection. This injects the given input every tick until it is stopped with StopContinuousInputInjectionForAction.
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputSubsystemInterface:StartContinuousInputInjectionForAction(Action, RawValue, Modifiers, Triggers) end

---Flag player for reapplication of all mapping contexts at the end of this frame.
---This is called automatically when adding or removing mappings contexts.
---@param Options FModifyContextOptions @[opt] 
---@param RebuildType EInputMappingRebuildType @[opt] 
function UEnhancedInputSubsystemInterface:RequestRebuildControlMappings(Options, RebuildType) end

---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputSubsystemInterface:RemovePlayerMappableConfig(Config, Options) end

---Remove a specific control context.
---This is safe to call even if the context is not applied.
---@param MappingContext UInputMappingContext
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputSubsystemInterface:RemoveMappingContext(MappingContext, Options) end

---@param MappingName string
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UEnhancedInputSubsystemInterface:RemoveAllPlayerMappedKeysForMapping(MappingName, Options) end

---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputSubsystemInterface:RemoveAllPlayerMappedKeys(Options) end

---= DefaultMappingIssues::StandardFatal
---@param PrioritizedActiveContexts TArray_UInputMappingContext_
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray_FMappingQueryIssue_ @[out] 
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function UEnhancedInputSubsystemInterface:QueryMapKeyInContextSet(PrioritizedActiveContexts, InputContext, Action, Key, OutIssues, BlockingIssues) end

---= DefaultMappingIssues::StandardFatal
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray_FMappingQueryIssue_ @[out] 
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function UEnhancedInputSubsystemInterface:QueryMapKeyInActiveContextSet(InputContext, Action, Key, OutIssues, BlockingIssues) end

---Returns the keys mapped to the given action in the active input mapping contexts.
---@param Action UInputAction
---@return TArray_FKey_
function UEnhancedInputSubsystemInterface:QueryKeysMappedToAction(Action) end

---Callback for when any Enhanced Input user settings have been changed (a new key mapping for example)
---@param Settings UEnhancedInputUserSettings
function UEnhancedInputSubsystemInterface:OnUserSettingsChanged(Settings) end

---A callback for when the user has applied a new mappable key profile.
---@param InNewProfile UEnhancedPlayerMappableKeyProfile
function UEnhancedInputSubsystemInterface:OnUserKeyProfileChanged(InNewProfile) end

---Removes player mapped key in the KeySlot for mapping of MappingName.
---Requests a rebuild of the player mappings.
---@param MappingName string
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UEnhancedInputSubsystemInterface:K2_RemovePlayerMappedKeyInSlot(MappingName, KeySlot, Options) end

---@param MappingName string
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@return FKey
function UEnhancedInputSubsystemInterface:K2_GetPlayerMappedKeyInSlot(MappingName, KeySlot) end

---@param MappingName string
---@param NewKey FKey
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UEnhancedInputSubsystemInterface:K2_AddPlayerMappedKeyInSlot(MappingName, NewKey, KeySlot, Options) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param MappingName string
---@param Value FVector
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputSubsystemInterface:InjectInputVectorForPlayerMapping(MappingName, Value, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param Action UInputAction
---@param Value FVector
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputSubsystemInterface:InjectInputVectorForAction(Action, Value, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param MappingName string
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputSubsystemInterface:InjectInputForPlayerMapping(MappingName, RawValue, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputSubsystemInterface:InjectInputForAction(Action, RawValue, Modifiers, Triggers) end

---Check if a mapping context is applied to this subsystem's owner.
---@param MappingContext UInputMappingContext
---@param OutFoundPriority integer @[out] 
---@return boolean
function UEnhancedInputSubsystemInterface:HasMappingContext(MappingContext, OutFoundPriority) end

---@return UEnhancedInputUserSettings
function UEnhancedInputSubsystemInterface:GetUserSettings() end

---@param MappingName string
---@return TArray_FKey_
function UEnhancedInputSubsystemInterface:GetAllPlayerMappedKeys(MappingName) end

---Get an array of the currently applied key mappings that are marked as Player Mappable.
---@return TArray_FEnhancedActionKeyMapping_
function UEnhancedInputSubsystemInterface:GetAllPlayerMappableActionKeyMappings() end

---Remove all applied mapping contexts.
function UEnhancedInputSubsystemInterface:ClearAllMappings() end

---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputSubsystemInterface:AddPlayerMappableConfig(Config, Options) end

---Add a control mapping context.
---@param MappingContext UInputMappingContext
---@param Priority integer
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputSubsystemInterface:AddMappingContext(MappingContext, Priority, Options) end

