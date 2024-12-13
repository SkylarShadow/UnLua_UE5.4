---This is a dummy reticle for internal use by visualization placement tasks. It builds a custom visual model of the visualization being placed.
---@class AGameplayAbilityWorldReticle_ActorVisualization : AGameplayAbilityWorldReticle
---@field private CollisionComponent UCapsuleComponent @Hardcoded collision component, so other objects don't think they can collide with the visualization actor
---@field public VisualizationComponents TArray<UActorComponent>
local AGameplayAbilityWorldReticle_ActorVisualization = {}

