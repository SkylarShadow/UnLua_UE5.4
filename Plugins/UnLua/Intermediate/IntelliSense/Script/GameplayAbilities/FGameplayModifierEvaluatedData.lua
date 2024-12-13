---Data that describes what happened in an attribute modification. This is passed to ability set callbacks
---@class FGameplayModifierEvaluatedData
---@field public Attribute FGameplayAttribute @What attribute was modified
---@field public ModifierOp integer @The numeric operation of this modifier: Override, Add, Multiply, etc
---@field public Magnitude number @The raw magnitude of the applied attribute, this is generally before being clamped
---@field public Handle FActiveGameplayEffectHandle @Handle of the active gameplay effect that originated us. Will be invalid in many cases
---@field public IsValid boolean @True if something was evaluated
local FGameplayModifierEvaluatedData = {}
