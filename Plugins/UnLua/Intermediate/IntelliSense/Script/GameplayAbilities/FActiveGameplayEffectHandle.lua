---This handle is required for things outside of FActiveGameplayEffectsContainer to refer to a specific active GameplayEffect
---    For example if a skill needs to create an active effect and then destroy that specific effect that it created, it has to do so
---    through a handle. a pointer or index into the active list is not sufficient. These are not synchronized between clients and server.
---@class FActiveGameplayEffectHandle
---@field private Handle integer
---@field private bPassedFiltersAndWasExecuted boolean
local FActiveGameplayEffectHandle = {}
