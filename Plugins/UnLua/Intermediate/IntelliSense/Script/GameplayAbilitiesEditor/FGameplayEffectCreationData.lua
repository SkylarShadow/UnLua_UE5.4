---@class FGameplayEffectCreationData
---@field public MenuPath string @Where to show this in the menu. Use "|" for sub categories. E.g, "Status|Hard|Stun|Root".
---@field public BaseName string @The default BaseName of the new asset. E.g "Damage" -> GE_Damage or GE_HeroName_AbilityName_Damage
---@field public ParentGameplayEffect TSubclassOf<UGameplayEffect>
local FGameplayEffectCreationData = {}
