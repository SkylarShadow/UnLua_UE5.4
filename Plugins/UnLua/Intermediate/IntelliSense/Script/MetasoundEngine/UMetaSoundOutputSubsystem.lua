---Provides access to a playing Metasound generator's outputs
---@class UMetaSoundOutputSubsystem : UTickableWorldSubsystem
---@field private TrackedGenerators TArray<UMetasoundGeneratorHandle>
local UMetaSoundOutputSubsystem = {}

---Watch an output on a Metasound playing on a given audio component.
---@param AudioComponent UAudioComponent
---@param OutputName string
---@param OnOutputValueChanged Delegate
---@param AnalyzerName string @[opt] 
---@param AnalyzerOutputName string @[opt] 
---@return boolean
function UMetaSoundOutputSubsystem:WatchOutput(AudioComponent, OutputName, OnOutputValueChanged, AnalyzerName, AnalyzerOutputName) end

