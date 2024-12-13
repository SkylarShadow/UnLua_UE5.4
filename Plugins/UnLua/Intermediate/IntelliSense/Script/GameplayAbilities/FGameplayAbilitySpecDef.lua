---This is data that can be used to create an FGameplayAbilitySpec. Has some data that is only relevant when granted by a GameplayEffect
---@class FGameplayAbilitySpecDef
---@field public Ability TSubclassOf<UGameplayAbility> @What ability to grant
---@field public LevelScalableFloat FScalableFloat @What level to grant this ability at
---@field public InputID integer @Input ID to bind this ability to
---@field public RemovalPolicy EGameplayEffectGrantedAbilityRemovePolicy @What will remove this ability later
---@field public SourceObject TWeakObjectPtr<UObject> @What granted this spec, not replicated or settable in editor
---@field public AssignedHandle FGameplayAbilitySpecHandle @This handle can be set if the SpecDef is used to create a real FGameplaybilitySpec
local FGameplayAbilitySpecDef = {}
