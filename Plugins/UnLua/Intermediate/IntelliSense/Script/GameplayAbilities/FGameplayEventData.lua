---Metadata for a tag-based Gameplay Event, that can activate other abilities or run ability-specific logic
---@class FGameplayEventData
---@field public EventTag FGameplayTag @Tag of the event that triggered this
---@field public Instigator AActor @The instigator of the event
---@field public Target AActor @The target of the event
---@field public OptionalObject UObject @An optional ability-specific object to be passed though the event
---@field public OptionalObject2 UObject @A second optional ability-specific object to be passed though the event
---@field public ContextHandle FGameplayEffectContextHandle @Polymorphic context information
---@field public InstigatorTags FGameplayTagContainer @Tags that the instigator has
---@field public TargetTags FGameplayTagContainer @Tags that the target has
---@field public EventMagnitude number @The magnitude of the triggering event
---@field public TargetData FGameplayAbilityTargetDataHandle @The polymorphic target information for the event
local FGameplayEventData = {}