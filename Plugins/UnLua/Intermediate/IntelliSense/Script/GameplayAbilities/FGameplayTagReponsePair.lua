---@class FGameplayTagReponsePair
---@field public Tag FGameplayTag @Tag that triggers this response
---@field public ResponseGameplayEffect TSubclassOf<UGameplayEffect> @Deprecated. Replaced with ResponseGameplayEffects
---@field public ResponseGameplayEffects TArray<TSubclassOf<UGameplayEffect>> @The GameplayEffects to apply in reponse to the tag
---@field public SoftCountCap integer @The max "count" this response can achieve. This will not prevent counts from being applied, but will be used when calculating the net count of a tag. 0=no cap.
local FGameplayTagReponsePair = {}
