---Per local player input subsystem
---@class UEnhancedInputLocalPlayerSubsystem : ULocalPlayerSubsystem
---@field public ControlMappingsRebuiltDelegate MulticastDelegate @Blueprint Event that is called at the end of any frame that Control Mappings have been rebuilt.
---@field protected UserSettings UEnhancedInputUserSettings @The user settings for this subsystem used to store each user's input related settings
---@field protected ContinuouslyInjectedInputs TMap<UInputAction, FInjectedInput> @Map of inputs that should be injected every frame. These inputs will be injected when ForcedInput is ticked.
local UEnhancedInputLocalPlayerSubsystem = {}

---A delegate that will be called when control mappings have been rebuilt this frame.
function UEnhancedInputLocalPlayerSubsystem:OnControlMappingsRebuilt__DelegateSignature() end

---Update the value of a continuous input injection for the given player mapping name, preserving the state of triggers and modifiers.
---@param MappingName string
---@param RawValue FInputActionValue
function UEnhancedInputLocalPlayerSubsystem:UpdateValueOfContinuousInputInjectionForPlayerMapping(MappingName, RawValue) end

---Update the value of a continuous input injection, preserving the state of triggers and modifiers.
---@param Action UInputAction
---@param RawValue FInputActionValue
function UEnhancedInputLocalPlayerSubsystem:UpdateValueOfContinuousInputInjectionForAction(Action, RawValue) end

---Stops continuous input injection for the given player mapping name.
---@param MappingName string
function UEnhancedInputLocalPlayerSubsystem:StopContinuousInputInjectionForPlayerMapping(MappingName) end

---Stops continuous input injection for the given action.
---@param Action UInputAction
function UEnhancedInputLocalPlayerSubsystem:StopContinuousInputInjectionForAction(Action) end

---Starts simulation of input via injection. This injects the given input every tick until it is stopped with StopContinuousInputInjectionForAction.
---@param MappingName string
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputLocalPlayerSubsystem:StartContinuousInputInjectionForPlayerMapping(MappingName, RawValue, Modifiers, Triggers) end

---Starts simulation of input via injection. This injects the given input every tick until it is stopped with StopContinuousInputInjectionForAction.
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputLocalPlayerSubsystem:StartContinuousInputInjectionForAction(Action, RawValue, Modifiers, Triggers) end

---Flag player for reapplication of all mapping contexts at the end of this frame.
---This is called automatically when adding or removing mappings contexts.
---@param Options FModifyContextOptions @[opt] 
---@param RebuildType EInputMappingRebuildType @[opt] 
function UEnhancedInputLocalPlayerSubsystem:RequestRebuildControlMappings(Options, RebuildType) end

---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputLocalPlayerSubsystem:RemovePlayerMappableConfig(Config, Options) end

---Remove a specific control context.
---This is safe to call even if the context is not applied.
---@param MappingContext UInputMappingContext
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputLocalPlayerSubsystem:RemoveMappingContext(MappingContext, Options) end

---@param MappingName string
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UEnhancedInputLocalPlayerSubsystem:RemoveAllPlayerMappedKeysForMapping(MappingName, Options) end

---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputLocalPlayerSubsystem:RemoveAllPlayerMappedKeys(Options) end

---= DefaultMappingIssues::StandardFatal
---@param PrioritizedActiveContexts TArray_UInputMappingContext_
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray_FMappingQueryIssue_ @[out] 
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function UEnhancedInputLocalPlayerSubsystem:QueryMapKeyInContextSet(PrioritizedActiveContexts, InputContext, Action, Key, OutIssues, BlockingIssues) end

---= DefaultMappingIssues::StandardFatal
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray_FMappingQueryIssue_ @[out] 
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function UEnhancedInputLocalPlayerSubsystem:QueryMapKeyInActiveContextSet(InputContext, Action, Key, OutIssues, BlockingIssues) end

---Returns the keys mapped to the given action in the active input mapping contexts.
---@param Action UInputAction
---@return TArray_FKey_
function UEnhancedInputLocalPlayerSubsystem:QueryKeysMappedToAction(Action) end

---Callback for when any Enhanced Input user settings have been changed (a new key mapping for example)
---@param Settings UEnhancedInputUserSettings
function UEnhancedInputLocalPlayerSubsystem:OnUserSettingsChanged(Settings) end

---A callback for when the user has applied a new mappable key profile.
---@param InNewProfile UEnhancedPlayerMappableKeyProfile
function UEnhancedInputLocalPlayerSubsystem:OnUserKeyProfileChanged(InNewProfile) end

---Removes player mapped key in the KeySlot for mapping of MappingName.
---Requests a rebuild of the player mappings.
---@param MappingName string
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UEnhancedInputLocalPlayerSubsystem:K2_RemovePlayerMappedKeyInSlot(MappingName, KeySlot, Options) end

---@param MappingName string
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@return FKey
function UEnhancedInputLocalPlayerSubsystem:K2_GetPlayerMappedKeyInSlot(MappingName, KeySlot) end

---@param MappingName string
---@param NewKey FKey
---@param KeySlot FPlayerMappableKeySlot @[opt] 
---@param Options FModifyContextOptions @[opt] 
---@return integer
function UEnhancedInputLocalPlayerSubsystem:K2_AddPlayerMappedKeyInSlot(MappingName, NewKey, KeySlot, Options) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param MappingName string
---@param Value FVector
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputLocalPlayerSubsystem:InjectInputVectorForPlayerMapping(MappingName, Value, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param Action UInputAction
---@param Value FVector
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputLocalPlayerSubsystem:InjectInputVectorForAction(Action, Value, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param MappingName string
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputLocalPlayerSubsystem:InjectInputForPlayerMapping(MappingName, RawValue, Modifiers, Triggers) end

---Input simulation via injection. Runs modifiers and triggers delegates as if the input had come through the underlying input system as FKeys.
---Applies action modifiers and triggers on top.
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray_UInputModifier_
---@param Triggers TArray_UInputTrigger_
function UEnhancedInputLocalPlayerSubsystem:InjectInputForAction(Action, RawValue, Modifiers, Triggers) end

---Check if a mapping context is applied to this subsystem's owner.
---@param MappingContext UInputMappingContext
---@param OutFoundPriority integer @[out] 
---@return boolean
function UEnhancedInputLocalPlayerSubsystem:HasMappingContext(MappingContext, OutFoundPriority) end

---@return UEnhancedInputUserSettings
function UEnhancedInputLocalPlayerSubsystem:GetUserSettings() end

---@param MappingName string
---@return TArray_FKey_
function UEnhancedInputLocalPlayerSubsystem:GetAllPlayerMappedKeys(MappingName) end

---Get an array of the currently applied key mappings that are marked as Player Mappable.
---@return TArray_FEnhancedActionKeyMapping_
function UEnhancedInputLocalPlayerSubsystem:GetAllPlayerMappableActionKeyMappings() end

---Remove all applied mapping contexts.
function UEnhancedInputLocalPlayerSubsystem:ClearAllMappings() end

---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputLocalPlayerSubsystem:AddPlayerMappableConfig(Config, Options) end

---Add a control mapping context.
---@param MappingContext UInputMappingContext
---@param Priority integer
---@param Options FModifyContextOptions @[opt] 
function UEnhancedInputLocalPlayerSubsystem:AddMappingContext(MappingContext, Priority, Options) end

