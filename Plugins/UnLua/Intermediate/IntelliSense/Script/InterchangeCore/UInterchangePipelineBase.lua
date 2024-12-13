---@class UInterchangePipelineBase : UObject
---@field protected Results UInterchangeResultsContainer
---@field protected PropertiesStates TMap<string, FInterchangePipelinePropertyStates> @Map of property path and lock status. Any properties that have a true lock status will be readonly when showing the import dialog. Use the API to Get and Set the properties states.
local UInterchangePipelineBase = {}

---Non-virtual helper that allows Blueprint to implement an event-based function.
---the Interchange framework calls this function, not the virtual one that is called by the default implementation.
---@param ReimportObjectClass TSubclassOf_UObject_
---@param SourceFileIndex integer
function UInterchangePipelineBase:ScriptedSetReimportSourceIndex(ReimportObjectClass, SourceFileIndex) end

---This function is call when we want to list pipeline in the import dialog. If not override the default behavior of this function will search if
---the pipeline have a FString UPROPERTY named "PipelineDisplayName" and return the property value. If there is no FString UPROPERTY call "PipelineDisplayName" it will
---return the name of the pipeline asset (UObject::GetName).
---When creating a pipeline (c++, python or blueprint) you can simply add a UPROPERTY name "PipelineDisplayName" to your pipeline, you do not need to override the function.
---Use the same category has your other options and put it on the top.
---The meta tag StandAlonePipelineProperty will hide your PROPERTY if your pipeline is a sub object of another pipeline when showing the import dialog.
---The meta tag PipelineInternalEditionData make sure the property will be show only when we edit the pipeline object (hidden when showing the import dialog).
---UPROPERTY(EditAnywhere, BlueprintReadWrite, Category = "Textures", meta = (StandAlonePipelineProperty = "True", PipelineInternalEditionData = "True"))
---FString PipelineDisplayName;
---@return string
function UInterchangePipelineBase:ScriptedGetPipelineDisplayName() end

---ScriptedExecutePostImportPipeline is called after an asset is completely imported, after PostEditChange has already been called.
---This can be useful if you need build data for one asset to finish setting up another asset.
---@param BaseNodeContainer UInterchangeBaseNodeContainer
---@param FactoryNodeKey string
---@param CreatedAsset UObject
---@param bIsAReimport boolean
function UInterchangePipelineBase:ScriptedExecutePostImportPipeline(BaseNodeContainer, FactoryNodeKey, CreatedAsset, bIsAReimport) end

---ScriptedExecutePostFactoryPipeline is called after the factory creates an Unreal asset, but before it calls PostEditChange.
---@param BaseNodeContainer UInterchangeBaseNodeContainer
---@param FactoryNodeKey string
---@param CreatedAsset UObject
---@param bIsAReimport boolean
function UInterchangePipelineBase:ScriptedExecutePostFactoryPipeline(BaseNodeContainer, FactoryNodeKey, CreatedAsset, bIsAReimport) end

---ScriptedExecutePipeline, is call after the translation and before we parse the graph to call the factory.
---This is where factory node should be created by the pipeline.
---Each factory node represent an unreal asset create that will be create by an interchange factory.
---@param BaseNodeContainer UInterchangeBaseNodeContainer
---@param SourceDatas TArray_UInterchangeSourceData_
---@param ContentBasePath string
function UInterchangePipelineBase:ScriptedExecutePipeline(BaseNodeContainer, SourceDatas, ContentBasePath) end

---Non-virtual helper that allows Blueprint to implement an event-based function.
---The Interchange manager calls this function, not the virtual one that is called by the default implementation.
---@param BaseNodeContainer UInterchangeBaseNodeContainer
function UInterchangePipelineBase:ScriptedExecuteExportPipeline(BaseNodeContainer) end

---Return a mutable property states reference. Add the property states if it doesn't exist.
---@param PropertyPath string
---@return FInterchangePipelinePropertyStates
function UInterchangePipelineBase:FindOrAddPropertyStates(PropertyPath) end

---Return true if the property has valid states, or false if no states were set for the property.
---@param PropertyPath string
---@return boolean
function UInterchangePipelineBase:DoesPropertyStatesExist(PropertyPath) end

