---@class UAssetTagsSubsystem : UEngineSubsystem
local UAssetTagsSubsystem = {}

---Re-parent the given collection.
---@param Name string
---@param NewParentName string
---@return boolean
function UAssetTagsSubsystem:ReparentCollection(Name, NewParentName) end

---Rename the given collection.
---@param Name string
---@param NewName string
---@return boolean
function UAssetTagsSubsystem:RenameCollection(Name, NewName) end

---@param Name string
---@param AssetPathNames TArray_string_
---@return boolean
function UAssetTagsSubsystem:RemoveAssetsFromCollection(Name, AssetPathNames) end

---Remove the given assets from the given collection.
---@param Name string
---@param AssetPtrs TArray_UObject_
---@return boolean
function UAssetTagsSubsystem:RemoveAssetPtrsFromCollection(Name, AssetPtrs) end

---Remove the given asset from the given collection.
---@param Name string
---@param AssetPtr UObject
---@return boolean
function UAssetTagsSubsystem:RemoveAssetPtrFromCollection(Name, AssetPtr) end

---@param Name string
---@param AssetPathName string
---@return boolean
function UAssetTagsSubsystem:RemoveAssetFromCollection(Name, AssetPathName) end

---Remove the given assets from the given collection.
---@param Name string
---@param AssetDatas TArray_FAssetData_
---@return boolean
function UAssetTagsSubsystem:RemoveAssetDatasFromCollection(Name, AssetDatas) end

---Remove the given asset from the given collection.
---@param Name string
---@param AssetData FAssetData
---@return boolean
function UAssetTagsSubsystem:RemoveAssetDataFromCollection(Name, AssetData) end

---Remove the given assets from the given collection.
---@param Name string
---@param AssetPaths TArray_FSoftObjectPath_
---@return boolean
function UAssetTagsSubsystem:K2_RemoveAssetsFromCollection(Name, AssetPaths) end

---Remove the given asset from the given collection.
---@param Name string
---@param AssetPath FSoftObjectPath
---@return boolean
function UAssetTagsSubsystem:K2_RemoveAssetFromCollection(Name, AssetPath) end

---Get the names of the collections that contain the given asset.
---@param AssetPath FSoftObjectPath
---@return TArray_string_
function UAssetTagsSubsystem:K2_GetCollectionsContainingAsset(AssetPath) end

---Add the given asset to the given collection.
---@param Name string
---@param AssetPath FSoftObjectPath
---@return boolean
function UAssetTagsSubsystem:K2_AddAssetToCollection(Name, AssetPath) end

---Add the given assets to the given collection.
---@param Name string
---@param AssetPaths TArray_FSoftObjectPath_
---@return boolean
function UAssetTagsSubsystem:K2_AddAssetsToCollection(Name, AssetPaths) end

---Get the names of the collections that contain the given asset.
---@param AssetPtr UObject
---@return TArray_string_
function UAssetTagsSubsystem:GetCollectionsContainingAssetPtr(AssetPtr) end

---Get the names of the collections that contain the given asset.
---@param AssetData FAssetData
---@return TArray_string_
function UAssetTagsSubsystem:GetCollectionsContainingAssetData(AssetData) end

---@param AssetPathName string
---@return TArray_string_
function UAssetTagsSubsystem:GetCollectionsContainingAsset(AssetPathName) end

---Get the names of all available collections.
---@return TArray_string_
function UAssetTagsSubsystem:GetCollections() end

---Get the assets in the given collection.
---@param Name string
---@return TArray_FAssetData_
function UAssetTagsSubsystem:GetAssetsInCollection(Name) end

---Remove all assets from the given collection.
---@param Name string
---@return boolean
function UAssetTagsSubsystem:EmptyCollection(Name) end

---Destroy the given collection.
---@param Name string
---@return boolean
function UAssetTagsSubsystem:DestroyCollection(Name) end

---Create a new collection with the given name and share type.
---@param Name string
---@param ShareType ECollectionScriptingShareType
---@return boolean
function UAssetTagsSubsystem:CreateCollection(Name, ShareType) end

---Check whether the given collection exists.
---@param Name string
---@return boolean
function UAssetTagsSubsystem:CollectionExists(Name) end

---@param Name string
---@param AssetPathName string
---@return boolean
function UAssetTagsSubsystem:AddAssetToCollection(Name, AssetPathName) end

---@param Name string
---@param AssetPathNames TArray_string_
---@return boolean
function UAssetTagsSubsystem:AddAssetsToCollection(Name, AssetPathNames) end

---Add the given asset to the given collection.
---@param Name string
---@param AssetPtr UObject
---@return boolean
function UAssetTagsSubsystem:AddAssetPtrToCollection(Name, AssetPtr) end

---Add the given assets to the given collection.
---@param Name string
---@param AssetPtrs TArray_UObject_
---@return boolean
function UAssetTagsSubsystem:AddAssetPtrsToCollection(Name, AssetPtrs) end

---Add the given asset to the given collection.
---@param Name string
---@param AssetData FAssetData
---@return boolean
function UAssetTagsSubsystem:AddAssetDataToCollection(Name, AssetData) end

---Add the given assets to the given collection.
---@param Name string
---@param AssetDatas TArray_FAssetData_
---@return boolean
function UAssetTagsSubsystem:AddAssetDatasToCollection(Name, AssetDatas) end

