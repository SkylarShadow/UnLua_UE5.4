---USkeletalMeshEditorSubsystem
---Subsystem for exposing skeletal mesh functionality to scripts
---@class USkeletalMeshEditorSubsystem : UEditorSubsystem
local USkeletalMeshEditorSubsystem = {}

---Set bVisibleInRayTracing for a section of a LOD of a Skeletal Mesh.
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param bVisibleInRayTracing boolean
---@return boolean
function USkeletalMeshEditorSubsystem:SetSectionVisibleInRayTracing(SkeletalMesh, LODIndex, SectionIndex, bVisibleInRayTracing) end

---Set RecomputeTangentsVertexMaskChannel for a section of a LOD of a Skeletal Mesh.
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param RecomputeTangentsVertexMaskChannel integer
---@return boolean
function USkeletalMeshEditorSubsystem:SetSectionRecomputeTangentsVertexMaskChannel(SkeletalMesh, LODIndex, SectionIndex, RecomputeTangentsVertexMaskChannel) end

---Set bRecomputeTangent for a section of a LOD of a Skeletal Mesh.
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param bRecomputeTangent boolean
---@return boolean
function USkeletalMeshEditorSubsystem:SetSectionRecomputeTangent(SkeletalMesh, LODIndex, SectionIndex, bRecomputeTangent) end

---Set bCastShadow for a section of a LOD of a Skeletal Mesh.
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param bCastShadow boolean
---@return boolean
function USkeletalMeshEditorSubsystem:SetSectionCastShadow(SkeletalMesh, LODIndex, SectionIndex, bCastShadow) end

---Set the LOD build options for the specified LOD index.
---@param SkeletalMesh USkeletalMesh
---@param LodIndex integer
---@param BuildOptions FSkeletalMeshBuildSettings
function USkeletalMeshEditorSubsystem.SetLodBuildSettings(SkeletalMesh, LodIndex, BuildOptions) end

---Rename a socket within a skeleton
---@param SkeletalMesh USkeletalMesh
---@param OldName string
---@param NewName string
---@return boolean
function USkeletalMeshEditorSubsystem.RenameSocket(SkeletalMesh, OldName, NewName) end

---Re-import the specified skeletal mesh and all the custom LODs.
---@param SkeletalMesh USkeletalMesh
---@return boolean
function USkeletalMeshEditorSubsystem.ReimportAllCustomLODs(SkeletalMesh) end

---Regenerate LODs of the mesh
---                                            Otherwise, it will use the current LOD and regenerate
---                                                                    If false, it will regenerate for only previously auto generated ones
---@param SkeletalMesh USkeletalMesh
---@param NewLODCount integer @[opt] 
---@param bRegenerateEvenIfImported boolean @[opt] 
---@param bGenerateBaseLOD boolean @[opt] 
---@return boolean
function USkeletalMeshEditorSubsystem.RegenerateLOD(SkeletalMesh, NewLODCount, bRegenerateEvenIfImported, bGenerateBaseLOD) end

---Checks whether a physics asset is compatible with the given SkeletalMesh
---@param TargetMesh USkeletalMesh
---@param PhysicsAsset UPhysicsAsset
---@return boolean
function USkeletalMeshEditorSubsystem.IsPhysicsAssetCompatible(TargetMesh, PhysicsAsset) end

---Import or re-import a LOD into the specified base mesh. If the LOD do not exist it will import it and add it to the base static mesh. If the LOD already exist it will re-import the specified LOD.
---@param BaseMesh USkeletalMesh
---@param LODIndex integer
---@param SourceFilename string
---@return integer
function USkeletalMeshEditorSubsystem.ImportLOD(BaseMesh, LODIndex, SourceFilename) end

---Get bVisibleInRayTracing from a section of a LOD of a Skeletal Mesh
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param bOutVisibleInRayTracing boolean @[out] 
---@return boolean
function USkeletalMeshEditorSubsystem:GetSectionVisibleInRayTracing(SkeletalMesh, LODIndex, SectionIndex, bOutVisibleInRayTracing) end

---Get RecomputeTangentsVertexMaskChannel from a section of a LOD of a Skeletal Mesh
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param OutRecomputeTangentsVertexMaskChannel integer @[out] 
---@return boolean
function USkeletalMeshEditorSubsystem:GetSectionRecomputeTangentsVertexMaskChannel(SkeletalMesh, LODIndex, SectionIndex, OutRecomputeTangentsVertexMaskChannel) end

---Get bRecomputeTangent from a section of a LOD of a Skeletal Mesh
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param bOutRecomputeTangent boolean @[out] 
---@return boolean
function USkeletalMeshEditorSubsystem:GetSectionRecomputeTangent(SkeletalMesh, LODIndex, SectionIndex, bOutRecomputeTangent) end

---Get bCastShadow from a section of a LOD of a Skeletal Mesh
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@param bOutCastShadow boolean @[out] 
---@return boolean
function USkeletalMeshEditorSubsystem:GetSectionCastShadow(SkeletalMesh, LODIndex, SectionIndex, bOutCastShadow) end

---Get number of mesh vertices for an LOD of a Skeletal Mesh
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@return integer
function USkeletalMeshEditorSubsystem:GetNumVerts(SkeletalMesh, LODIndex) end

---Get number of sections for a LOD of a Skeletal Mesh
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@return integer
function USkeletalMeshEditorSubsystem:GetNumSections(SkeletalMesh, LODIndex) end

---Gets the material slot used for a specific LOD section.
---@param SkeletalMesh USkeletalMesh
---@param LODIndex integer
---@param SectionIndex integer
---@return integer
function USkeletalMeshEditorSubsystem:GetLODMaterialSlot(SkeletalMesh, LODIndex, SectionIndex) end

---Retrieve the number of LOD contain in the specified skeletal mesh.
---@param SkeletalMesh USkeletalMesh
---@return integer
function USkeletalMeshEditorSubsystem.GetLODCount(SkeletalMesh) end

---Copy the build options with the specified LOD build settings.
---@param SkeletalMesh USkeletalMesh
---@param LodIndex integer
---@param OutBuildOptions FSkeletalMeshBuildSettings @[out] 
function USkeletalMeshEditorSubsystem.GetLodBuildSettings(SkeletalMesh, LodIndex, OutBuildOptions) end

---This function creates a PhysicsAsset for the given SkeletalMesh with the same settings as if it were created through FBX import
---@param SkeletalMesh USkeletalMesh
---@return UPhysicsAsset
function USkeletalMeshEditorSubsystem.CreatePhysicsAsset(SkeletalMesh) end

---Assigns a PhysicsAsset to the given SkeletalMesh if it is compatible. Passing
---nullptr / None as the physics asset will always succeed and will clear the
---physics asset assignment for the target SkeletalMesh
---@param TargetMesh USkeletalMesh
---@param PhysicsAsset UPhysicsAsset
---@return boolean
function USkeletalMeshEditorSubsystem.AssignPhysicsAsset(TargetMesh, PhysicsAsset) end

