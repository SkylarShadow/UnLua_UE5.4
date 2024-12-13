---Generic querying data structure for active GameplayEffects. Lets us ask things like:
---        Give me duration/magnitude of active gameplay effects with these tags
---        Give me handles to all activate gameplay effects modifying this attribute.
---Any requirements specified in the query are required: must meet "all" not "one".
---@class FActiveGameplayEffectQuery
local FActiveGameplayEffectQuery = {}
