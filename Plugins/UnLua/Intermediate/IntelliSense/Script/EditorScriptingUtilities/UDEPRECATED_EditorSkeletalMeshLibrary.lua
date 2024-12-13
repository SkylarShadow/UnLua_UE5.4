---Utility class to altering and analyzing a SkeletalMesh and use the common functionalities of the SkeletalMesh Editor.
---The editor should not be in play in editor mode.
---@class UDEPRECATED_EditorSkeletalMeshLibrary : UBlueprintFunctionLibrary
local UDEPRECATED_EditorSkeletalMeshLibrary = {}

---This function will strip all triangle in the specified LOD that don't have any UV area pointing on a black pixel in the TextureMask.
---We use the UVChannel 0 to find the pixels in the texture.
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param TextureMask UTexture2D
---@param Threshold number
---@return boolean
function UDEPRECATED_EditorSkeletalMeshLibrary.StripLODGeometry(SkeletalMesh, LODIndex, TextureMask, Threshold) end

---@param SkeletalMesh USkeletalMesh
---@param LodIndex integer
---@param BuildOptions FSkeletalMeshBuildSettings
function UDEPRECATED_EditorSkeletalMeshLibrary.SetLodBuildSettings(SkeletalMesh, LodIndex, BuildOptions) end

---@param SkeletalMesh USkeletalMesh
---@param OldName string
---@param NewName string
---@return boolean
function UDEPRECATED_EditorSkeletalMeshLibrary.RenameSocket(SkeletalMesh, OldName, NewName) end

---Remove all the specified LODs. This function will remove all the valid LODs in the list.
---Valid LOD is any LOD greater then 0 that exist in the skeletalmesh. We cannot remove the base LOD 0.
---will have removed all valid LODs.
---@param SkeletalMesh USkeletalMesh
---@param ToRemoveLODs TArray_integer_
---@return boolean
function UDEPRECATED_EditorSkeletalMeshLibrary.RemoveLODs(SkeletalMesh, ToRemoveLODs) end

---@param SkeletalMesh USkeletalMesh
---@return boolean
function UDEPRECATED_EditorSkeletalMeshLibrary.ReimportAllCustomLODs(SkeletalMesh) end

---@param SkeletalMesh USkeletalMesh
---@param NewLODCount integer @[opt] 
---@param bRegenerateEvenIfImported boolean @[opt] 
---@param bGenerateBaseLOD boolean @[opt] 
---@return boolean
function UDEPRECATED_EditorSkeletalMeshLibrary.RegenerateLOD(SkeletalMesh, NewLODCount, bRegenerateEvenIfImported, bGenerateBaseLOD) end

---@param BaseMesh USkeletalMesh
---@param LODIndex integer
---@param SourceFilename string
---@return integer
function UDEPRECATED_EditorSkeletalMeshLibrary.ImportLOD(BaseMesh, LODIndex, SourceFilename) end

---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@return integer
function UDEPRECATED_EditorSkeletalMeshLibrary.GetNumVerts(SkeletalMesh, LODIndex) end

---@param SkeletalMesh USkeletalMesh
---@return integer
function UDEPRECATED_EditorSkeletalMeshLibrary.GetLODCount(SkeletalMesh) end

---@param SkeletalMesh USkeletalMesh
---@param LodIndex integer
---@param OutBuildOptions FSkeletalMeshBuildSettings @[out] 
function UDEPRECATED_EditorSkeletalMeshLibrary.GetLodBuildSettings(SkeletalMesh, LodIndex, OutBuildOptions) end

---This function creates a PhysicsAsset for the given SkeletalMesh with the same settings as if it were created through FBX import
---@param SkeletalMesh USkeletalMesh
---@return UPhysicsAsset
function UDEPRECATED_EditorSkeletalMeshLibrary.CreatePhysicsAsset(SkeletalMesh) end

