---Options on how to configure a GameplayAbilitySpec to grant an Actor
---@class FGameplayAbilitySpecConfig
---@field public Ability TSubclassOf<UGameplayAbility> @What ability to grant
---@field public LevelScalableFloat FScalableFloat @What level to grant this ability at
---@field public InputID integer @Input ID to bind this ability to
---@field public RemovalPolicy EGameplayEffectGrantedAbilityRemovePolicy @What will remove this ability later
local FGameplayAbilitySpecConfig = {}
