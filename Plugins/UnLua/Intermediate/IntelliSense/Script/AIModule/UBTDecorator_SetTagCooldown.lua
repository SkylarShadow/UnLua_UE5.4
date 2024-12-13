---Set tag cooldown decorator node.
---A decorator node that sets a gameplay tag cooldown.
---@class UBTDecorator_SetTagCooldown : UBTDecorator
---@field public CooldownTag FGameplayTag @Gameplay tag that will be used for the cooldown.
---@field public CooldownDuration number @Value we will add or set to the Cooldown tag when this task runs.
---@field public bAddToExistingDuration boolean @True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).
local UBTDecorator_SetTagCooldown = {}

