---Ability Ended Data
---@class FAbilityEndedData
---@field public AbilityThatEnded UGameplayAbility @Ability that ended, normally instance but could be CDO
---@field public AbilitySpecHandle FGameplayAbilitySpecHandle @Specific ability spec that ended
---@field public bReplicateEndAbility boolean @Rather to replicate the ability to ending
---@field public bWasCancelled boolean @True if this was cancelled deliberately, false if it ended normally
local FAbilityEndedData = {}
