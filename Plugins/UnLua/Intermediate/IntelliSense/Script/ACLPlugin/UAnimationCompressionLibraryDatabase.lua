---An ACL database object references several UAnimSequence instances that it contains.
---@class UAnimationCompressionLibraryDatabase : UObject
---@field private CookedCompressedBytes TArray<integer> @The raw binary data for our compressed database and anim sequences. Present only in cooked builds.
---@field private CookedAnimSequenceMappings TArray<integer> @Stores a mapping for each anim sequence, where its compressed data lives in our compressed buffer. Each 64 bit value is split into 32 bits: (Hash << 32) | Offset. Present only in cooked builds.
---@field private HighestImportanceProportion number @What percentage of the key frames should remain in the anim sequences.
---@field private MediumImportanceProportion number @What percentage of the key frames should be moved to the database. Medium importance key frames are moved second.
---@field private LowestImportanceProportion number @What percentage of the key frames should be moved to the database. Least important key frames are moved first.
---@field private StripLowestImportanceTier FPerPlatformBool @Whether or not to strip the lowest importance tier entirely from disk. Stripping the lowest tier means that the visual fidelity of Highest and Medium are equivalent.
---@field private MaxStreamRequestSizeKB integer @The maximum size in KiloBytes of streaming requests. Setting this to 0 will force tiers to load in a single request regardless of their size.
---@field private PreviewVisualFidelity ACLVisualFidelity @The level of quality to preview with the database when decompressing in the editor.
---@field private AnimSequences TArray<UAnimSequence> @The anim sequences contained within the database. Built manually from the asset UI, content browser, or with a commandlet.
local UAnimationCompressionLibraryDatabase = {}

---Initiate a latent database change in quality by streaming in/out as necessary.
---@param WorldContextObject UObject
---@param DatabaseAsset UAnimationCompressionLibraryDatabase
---@param Result ACLVisualFidelityChangeResult @[out] 
---@param VisualFidelity ACLVisualFidelity @[opt] 
function UAnimationCompressionLibraryDatabase.SetVisualFidelity(WorldContextObject, DatabaseAsset, Result, VisualFidelity) end

---@param DatabaseAsset UAnimationCompressionLibraryDatabase
---@return ACLVisualFidelity
function UAnimationCompressionLibraryDatabase.GetVisualFidelity(DatabaseAsset) end

