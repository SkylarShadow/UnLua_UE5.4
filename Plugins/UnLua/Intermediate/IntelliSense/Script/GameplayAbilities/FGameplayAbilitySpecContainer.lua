---Fast serializer wrapper for above struct
---@class FGameplayAbilitySpecContainer : FFastArraySerializer
---@field public Items TArray<FGameplayAbilitySpec> @List of activatable abilities
---@field public Owner UAbilitySystemComponent @Component that owns this list
local FGameplayAbilitySpecContainer = {}
