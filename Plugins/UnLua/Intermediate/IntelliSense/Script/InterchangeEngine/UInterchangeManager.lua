---@class UInterchangeManager : UObject
---@field private RegisteredTranslatorsClass TSet<TSubclassOf<UObject>> @Caching the registered translator classes to avoid double registration.
---@field private RegisteredFactoryClasses TMap<TSubclassOf<UObject>, TSubclassOf<UObject>> @The manager will create only one factory per type.
---@field private RegisteredWriters TMap<TSubclassOf<UObject>, UInterchangeWriterBase> @The manager will create only one writer per type.
---@field private RegisteredConverters TMap<TSubclassOf<UObject>, UInterchangeAssetImportDataConverterBase> @The manager will create only one converter per type.
local UInterchangeManager = {}

---Call this to start a scene import process. The caller must specify the source data.
---This process can import many different assets and their transforms (USceneComponent), store the result in a Blueprint, and add the Blueprint to the level.
---@param ContentPath string
---@param SourceData UInterchangeSourceData
---@param ImportAssetParameters FImportAssetParameters
---@return boolean
function UInterchangeManager:ImportScene(ContentPath, SourceData, ImportAssetParameters) end

---Call this to start an asset import process. The caller must specify the source data.
---This process can import many different assets into the game content.
---@param ContentPath string
---@param SourceData UInterchangeSourceData
---@param ImportAssetParameters FImportAssetParameters
---@return boolean
function UInterchangeManager:ImportAsset(ContentPath, SourceData, ImportAssetParameters) end

---Script helper to get a registered factory for a specified class.
---@param ClassToMake TSubclassOf_UObject_
---@return TSubclassOf_UObject_
function UInterchangeManager:GetRegisteredFactoryClass(ClassToMake) end

---Return the pointer to the Interchange Manager singleton.
---@return UInterchangeManager
function UInterchangeManager.GetInterchangeManagerScripted() end

---Call this to start a scene export process. The caller must specify a source data.
---@param World UObject
---@param bIsAutomated boolean @[opt] 
---@return boolean
function UInterchangeManager:ExportScene(World, bIsAutomated) end

---Call this to start an asset export process. The caller must specify a source data.
---@param Asset UObject
---@param bIsAutomated boolean @[opt] 
---@return boolean
function UInterchangeManager:ExportAsset(Asset, bIsAutomated) end

---* Script helper to create a source data object that points to a file on disk.
---* @@Param InFilename: Specify a file on disk.
---* @@return: A new UInterchangeSourceData.
---@param InFileName string
---@return UInterchangeSourceData
function UInterchangeManager.CreateSourceData(InFileName) end

