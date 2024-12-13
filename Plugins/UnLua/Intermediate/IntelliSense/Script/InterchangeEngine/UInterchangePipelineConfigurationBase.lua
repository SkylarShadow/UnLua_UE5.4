---@class UInterchangePipelineConfigurationBase : UObject
local UInterchangePipelineConfigurationBase = {}

---Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowScenePipelineConfigurationDialog().
---@param PipelineStacks TArray_FInterchangeStackInfo_ @[out] 
---@param OutPipelines TArray_UInterchangePipelineBase_ @[out] 
---@param SourceData UInterchangeSourceData
---@param Translator UInterchangeTranslatorBase
---@param BaseNodeContainer UInterchangeBaseNodeContainer
---@return EInterchangePipelineConfigurationDialogResult
function UInterchangePipelineConfigurationBase:ScriptedShowScenePipelineConfigurationDialog(PipelineStacks, OutPipelines, SourceData, Translator, BaseNodeContainer) end

---Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowReimportPipelineConfigurationDialog().
---@param PipelineStacks TArray_FInterchangeStackInfo_ @[out] 
---@param OutPipelines TArray_UInterchangePipelineBase_ @[out] 
---@param SourceData UInterchangeSourceData
---@param Translator UInterchangeTranslatorBase
---@param BaseNodeContainer UInterchangeBaseNodeContainer
---@param ReimportAsset UObject
---@return EInterchangePipelineConfigurationDialogResult
function UInterchangePipelineConfigurationBase:ScriptedShowReimportPipelineConfigurationDialog(PipelineStacks, OutPipelines, SourceData, Translator, BaseNodeContainer, ReimportAsset) end

---Non-virtual helper that allows Blueprint to implement an event-based function to implement ShowPipelineConfigurationDialog().
---@param PipelineStacks TArray_FInterchangeStackInfo_ @[out] 
---@param OutPipelines TArray_UInterchangePipelineBase_ @[out] 
---@param SourceData UInterchangeSourceData
---@param Translator UInterchangeTranslatorBase
---@param BaseNodeContainer UInterchangeBaseNodeContainer
---@return EInterchangePipelineConfigurationDialogResult
function UInterchangePipelineConfigurationBase:ScriptedShowPipelineConfigurationDialog(PipelineStacks, OutPipelines, SourceData, Translator, BaseNodeContainer) end

