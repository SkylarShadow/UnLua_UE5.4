---Class used to perform custom gameplay effect modifier calculations, either via blueprint or native code
---@class UGameplayEffectCustomApplicationRequirement : UObject
local UGameplayEffectCustomApplicationRequirement = {}

---Return whether the gameplay effect should be applied or not
---@param GameplayEffect UGameplayEffect
---@param Spec FGameplayEffectSpec
---@param ASC UAbilitySystemComponent
---@return boolean
function UGameplayEffectCustomApplicationRequirement:CanApplyGameplayEffect(GameplayEffect, Spec, ASC) end

