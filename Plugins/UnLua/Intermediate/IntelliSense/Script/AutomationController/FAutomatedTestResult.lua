---@class FAutomatedTestResult
---@field public TestDisplayName string
---@field public FullTestPath string
---@field public State EAutomationState
---@field public DeviceInstance TArray<string>
---@field public Duration number
---@field public DateTime FDateTime
---@field private Entries TArray<FAutomationExecutionEntry>
---@field private Warnings integer
---@field private Errors integer
---@field private Artifacts TArray<FAutomationArtifact>
local FAutomatedTestResult = {}