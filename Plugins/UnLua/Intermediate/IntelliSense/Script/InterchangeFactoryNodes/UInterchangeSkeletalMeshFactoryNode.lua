---@class UInterchangeSkeletalMeshFactoryNode : UInterchangeMeshFactoryNode
local UInterchangeSkeletalMeshFactoryNode = {}

---Set the skeletal mesh UseHighPrecisionSkinWeights setting.
---@param AttributeValue boolean
---@param bAddApplyDelegate boolean @[opt] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomUseHighPrecisionSkinWeights(AttributeValue, bAddApplyDelegate) end

---Set the skeletal mesh threshold value that is used to decide whether two UVs are equal.
---@param AttributeValue number
---@param bAddApplyDelegate boolean @[opt] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomThresholdUV(AttributeValue, bAddApplyDelegate) end

---Set the skeletal mesh threshold value that is used to decide whether two normals, tangents, or bi-normals are equal.
---@param AttributeValue number
---@param bAddApplyDelegate boolean @[opt] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomThresholdTangentNormal(AttributeValue, bAddApplyDelegate) end

---Set the skeletal mesh threshold value that is used to decide whether two vertex positions are equal.
---@param AttributeValue number
---@param bAddApplyDelegate boolean @[opt] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomThresholdPosition(AttributeValue, bAddApplyDelegate) end

---Set the skeletal mesh factory skeleton UObject. Return false if the attribute could not be set.
---@param AttributeValue FSoftObjectPath
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomSkeletonSoftObjectPath(AttributeValue) end

---Set a physics asset the skeletal mesh factory should use. Return false if the attribute could not be set.
---@param AttributeValue FSoftObjectPath
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomPhysicAssetSoftObjectPath(AttributeValue) end

---Set the skeletal mesh threshold value that is used to compare vertex position equality when computing morph target deltas.
---@param AttributeValue number
---@param bAddApplyDelegate boolean @[opt] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomMorphThresholdPosition(AttributeValue, bAddApplyDelegate) end

---Set whether the skeletal mesh factory should import vertex attributes. Return false if the attribute could not be set.
---@param AttributeValue boolean
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomImportVertexAttributes(AttributeValue) end

---Set whether the skeletal mesh factory should create morph targets. Return false if the attribute could not be set.
---@param AttributeValue boolean
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomImportMorphTarget(AttributeValue) end

---Set the skeletal mesh import content type. This content type determines whether the factory imports partial or full translated content. Return false if the attribute could not be set.
---@param AttributeValue EInterchangeSkeletalMeshContentType
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomImportContentType(AttributeValue) end

---Set whether the skeletal mesh factory should create a physics asset. Return false if the attribute could not be set.
---@param AttributeValue boolean
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomCreatePhysicsAsset(AttributeValue) end

---Set the maximum number of bone influences to allow each vertex in this mesh to use.
---If set higher than the limit determined by the project settings, it has no effect.
---If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.
---@param AttributeValue integer
---@param bAddApplyDelegate boolean @[opt] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:SetCustomBoneInfluenceLimit(AttributeValue, bAddApplyDelegate) end

---Initialize node data.
---@param UniqueID string
---@param DisplayLabel string
---@param InAssetClass string
function UInterchangeSkeletalMeshFactoryNode:InitializeSkeletalMeshNode(UniqueID, DisplayLabel, InAssetClass) end

---Get the class this node creates.
---@return TSubclassOf_UObject_
function UInterchangeSkeletalMeshFactoryNode:GetObjectClass() end

---Query the skeletal mesh UseHighPrecisionSkinWeights setting.
---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomUseHighPrecisionSkinWeights(AttributeValue) end

---Query the skeletal mesh threshold value that is used to decide whether two UVs are equal.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomThresholdUV(AttributeValue) end

---Query the skeletal mesh threshold value that is used to decide whether two normals, tangents, or bi-normals are equal.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomThresholdTangentNormal(AttributeValue) end

---Query the skeletal mesh threshold value that is used to decide whether two vertex positions are equal.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomThresholdPosition(AttributeValue) end

---Query the skeletal mesh factory skeleton UObject. Return false if the attribute was not set.
---@param AttributeValue FSoftObjectPath @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomSkeletonSoftObjectPath(AttributeValue) end

---Query a physics asset the skeletal mesh factory should use. Return false if the attribute was not set.
---@param AttributeValue FSoftObjectPath @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomPhysicAssetSoftObjectPath(AttributeValue) end

---Query the skeletal mesh threshold value that is used to compare vertex position equality when computing morph target deltas.
---@param AttributeValue number @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomMorphThresholdPosition(AttributeValue) end

---Query whether the skeletal mesh factory should import vertex attributes. Return false if the attribute was not set.
---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomImportVertexAttributes(AttributeValue) end

---Query whether the skeletal mesh factory should create morph targets. Return false if the attribute was not set.
---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomImportMorphTarget(AttributeValue) end

---Query the skeletal mesh import content type. This content type determines whether the factory imports partial or full translated content. Return false if the attribute was not set.
---@param AttributeValue EInterchangeSkeletalMeshContentType @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomImportContentType(AttributeValue) end

---Query whether the skeletal mesh factory should create a physics asset. Return false if the attribute was not set.
---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomCreatePhysicsAsset(AttributeValue) end

---Query the maximum number of bone influences to allow each vertex in this mesh to use.
---If set higher than the limit determined by the project settings, it has no effect.
---If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.
---@param AttributeValue integer @[out] 
---@return boolean
function UInterchangeSkeletalMeshFactoryNode:GetCustomBoneInfluenceLimit(AttributeValue) end

