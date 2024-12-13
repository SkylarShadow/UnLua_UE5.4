---namespace UE
---@class UInterchangeStaticMeshLodDataNode : UInterchangeFactoryBaseNode
local UInterchangeStaticMeshLodDataNode = {}

---@param AttributeValue boolean
---@return boolean
function UInterchangeStaticMeshLodDataNode:SetOneConvexHullPerUCX(AttributeValue) end

---@param AttributeValue boolean
---@return boolean
function UInterchangeStaticMeshLodDataNode:SetImportCollision(AttributeValue) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveSphereCollisionMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveConvexCollisionMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveCapsuleCollisionMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveBoxCollisionMeshUid(MeshName) end

---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveAllSphereCollisionMeshes() end

---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveAllMeshes() end

---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveAllConvexCollisionMeshes() end

---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveAllCapsuleCollisionMeshes() end

---@return boolean
function UInterchangeStaticMeshLodDataNode:RemoveAllBoxCollisionMeshes() end

---@return integer
function UInterchangeStaticMeshLodDataNode:GetSphereCollisionMeshUidsCount() end

---@param OutMeshNames TArray_string_ @[out] 
function UInterchangeStaticMeshLodDataNode:GetSphereCollisionMeshUids(OutMeshNames) end

---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeStaticMeshLodDataNode:GetOneConvexHullPerUCX(AttributeValue) end

---Mesh UIDs can be either a scene node or a mesh node UID. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
---@return integer
function UInterchangeStaticMeshLodDataNode:GetMeshUidsCount() end

---@param OutMeshNames TArray_string_ @[out] 
function UInterchangeStaticMeshLodDataNode:GetMeshUids(OutMeshNames) end

---@param AttributeValue boolean @[out] 
---@return boolean
function UInterchangeStaticMeshLodDataNode:GetImportCollision(AttributeValue) end

---@return integer
function UInterchangeStaticMeshLodDataNode:GetConvexCollisionMeshUidsCount() end

---@param OutMeshNames TArray_string_ @[out] 
function UInterchangeStaticMeshLodDataNode:GetConvexCollisionMeshUids(OutMeshNames) end

---@return integer
function UInterchangeStaticMeshLodDataNode:GetCapsuleCollisionMeshUidsCount() end

---@param OutMeshNames TArray_string_ @[out] 
function UInterchangeStaticMeshLodDataNode:GetCapsuleCollisionMeshUids(OutMeshNames) end

---@return integer
function UInterchangeStaticMeshLodDataNode:GetBoxCollisionMeshUidsCount() end

---@param OutMeshNames TArray_string_ @[out] 
function UInterchangeStaticMeshLodDataNode:GetBoxCollisionMeshUids(OutMeshNames) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:AddSphereCollisionMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:AddMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:AddConvexCollisionMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:AddCapsuleCollisionMeshUid(MeshName) end

---@param MeshName string
---@return boolean
function UInterchangeStaticMeshLodDataNode:AddBoxCollisionMeshUid(MeshName) end

