---@class FMetaSoundQualitySettings
---@field public UniqueId FGuid @A hidden GUID that will be generated once when adding a new entry. This prevents orphaning of renamed entries. *
---@field public Name string @Name of this quality setting. This will appear in the quality dropdown list.               The names should be unique and adequately describe the Entry. "High", "Low" etc. *
---@field public SampleRate FPerPlatformInt @Sample Rate (in Hz). NOTE: A Zero value will have no effect and use the Device Rate. *
---@field public BlockRate FPerPlatformFloat @Block Rate (in Hz). NOTE: A Zero value will have no effect and use the Default (100)  *
local FMetaSoundQualitySettings = {}
