---Struct used to handle a collection of captured source and target attributes
---@class FGameplayEffectAttributeCaptureSpecContainer
---@field private SourceAttributes TArray<FGameplayEffectAttributeCaptureSpec> @Captured attributes from the source of a gameplay effect
---@field private TargetAttributes TArray<FGameplayEffectAttributeCaptureSpec> @Captured attributes from the target of a gameplay effect
---@field private bHasNonSnapshottedAttributes boolean @If true, has at least one capture spec that did not request a snapshot
local FGameplayEffectAttributeCaptureSpecContainer = {}
