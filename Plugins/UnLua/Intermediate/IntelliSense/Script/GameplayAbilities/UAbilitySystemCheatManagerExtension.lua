---Cheats related to GAS
---@class UAbilitySystemCheatManagerExtension : UCheatManagerExtension
local UAbilitySystemCheatManagerExtension = {}

---Remove an Active Gameplay Effect on the owning Player
---@param NameOrHandle string
function UAbilitySystemCheatManagerExtension:EffectRemove(NameOrHandle) end

---List the Active Gameplay Effects on the owning Player
function UAbilitySystemCheatManagerExtension:EffectListActive() end

---Apply a Gameplay Effect on the owning Player
---@param PartialName string
---@param EffectLevel number @[opt] 
function UAbilitySystemCheatManagerExtension:EffectApply(PartialName, EffectLevel) end

---List all of the Abilities Granted to the owning Player
function UAbilitySystemCheatManagerExtension:AbilityListGranted() end

---Grant a specified GameplayAbility to the owning Player
---@param AssetSearchString string
function UAbilitySystemCheatManagerExtension:AbilityGrant(AssetSearchString) end

---Cancel a previously activated GameplayAbility on the owning Player
---@param PartialName string
function UAbilitySystemCheatManagerExtension:AbilityCancel(PartialName) end

---Activate a previously granted GameplayAbility on the owning Player
---@param PartialName string
function UAbilitySystemCheatManagerExtension:AbilityActivate(PartialName) end

