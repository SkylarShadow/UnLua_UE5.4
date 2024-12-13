---A gameplay ability that plays a single montage and applies a GameplayEffect
---@class UGameplayAbility_Montage : UGameplayAbility
---@field public MontageToPlay UAnimMontage
---@field public PlayRate number
---@field public SectionName string
---@field public GameplayEffectClassesWhileAnimating TArray<TSubclassOf<UGameplayEffect>> @GameplayEffects to apply and then remove while the animation is playing
---@field public GameplayEffectsWhileAnimating TArray<UGameplayEffect> @Deprecated. Use GameplayEffectClassesWhileAnimating instead.
local UGameplayAbility_Montage = {}

