---settings object used in details view of the batch retarget window
---@class UBatchExportOptions : UObject
---@field public bOverwriteExistingFiles boolean @Any files with the same name will be overwritten instead of creating a new file with a numeric suffix. This is useful when iterating on a batch process.
---@field public bIncludeReferencedAssets boolean @Duplicates and retargets any animation assets referenced by the input assets. For example, sequences in an animation blueprint or blendspace.
local UBatchExportOptions = {}

