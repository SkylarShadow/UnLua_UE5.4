---Target data with a source location and a list of targeted actors, makes sense for AOE attacks
---@class FGameplayAbilityTargetData_ActorArray : FGameplayAbilityTargetData
---@field public SourceLocation FGameplayAbilityTargetingLocationInfo @We could be selecting this group of actors from any type of location, so use a generic location type
---@field public TargetActorArray TArray<TWeakObjectPtr<AActor>> @Rather than targeting a single point, this type of targeting selects multiple actors.
local FGameplayAbilityTargetData_ActorArray = {}
