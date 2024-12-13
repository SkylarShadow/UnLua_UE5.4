---Structure that stores a location in one of several different formats
---@class FGameplayAbilityTargetingLocationInfo
---@field public LocationType integer @Type of location used - will determine what data is transmitted over the network and what fields are used when calculating position.
---@field public LiteralTransform FTransform @A literal world transform can be used, if one has been calculated outside of the actor using the ability.
---@field public SourceActor AActor @A source actor is needed for Actor-based targeting, but not for Socket-based targeting.
---@field public SourceComponent UMeshComponent @Socket-based targeting requires a skeletal mesh component to check for the named socket.
---@field public SourceAbility UGameplayAbility @Ability that will be using the targeting data
---@field public SourceSocketName string @If SourceComponent is valid, this is the name of the socket transform that will be used. If no Socket is provided, SourceComponent's transform will be used.
local FGameplayAbilityTargetingLocationInfo = {}
