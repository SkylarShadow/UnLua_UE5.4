---Compile time data used by Data Channel interfaces.
---@class FNDIDataChannelCompiledData
---@field protected FunctionInfo TArray<FNDIDataChannelFunctionInfo> @Data describing every function call for this DI in VM scripts. VM Access to data channels uses a binding from script to DataSet per function call (de-duped by layout).
---@field protected GPUScriptParameterInfos TMap<FNiagaraCompileHash, FNDIDataChannel_GPUScriptParameterAccessInfo> @Info about which parameters are accessed for each GPU script. GPU access to data channels uses a binding from script to DataSet per script via a mapping of param<-->data set offsets.
---@field protected TotalParams integer @Total param count across all scripts. Allows easy pre-allocation for the buffers at runtime.
---@field protected bUsedByCPU boolean
---@field protected bUsedByGPU boolean
---@field protected bNeedsSpawnDataTable boolean
local FNDIDataChannelCompiledData = {}
