---@class UControlRigTestData : UObject
---@field public ControlRigObjectPath FSoftObjectPath
---@field public Initial FControlRigTestDataFrame
---@field public InputFrames TArray<FControlRigTestDataFrame>
---@field public OutputFrames TArray<FControlRigTestDataFrame>
---@field public FramesToSkip TArray<integer>
---@field public Tolerance number
local UControlRigTestData = {}

---@param InControlRig UControlRig
---@param bGroundTruth boolean @[opt] 
---@return boolean
function UControlRigTestData:SetupReplay(InControlRig, bGroundTruth) end

function UControlRigTestData:ReleaseReplay() end

---@param InControlRig UControlRig
---@param InRecordingDuration number @[opt] 
---@return boolean
function UControlRigTestData:Record(InControlRig, InRecordingDuration) end

---@return boolean
function UControlRigTestData:IsReplaying() end

---@return boolean
function UControlRigTestData:IsRecording() end

---@param bInput boolean @[opt] 
---@return FVector2D
function UControlRigTestData:GetTimeRange(bInput) end

---@return EControlRigTestDataPlaybackMode
function UControlRigTestData:GetPlaybackMode() end

---@param InSeconds number
---@param bInput boolean @[opt] 
---@return integer
function UControlRigTestData:GetFrameIndexForTime(InSeconds, bInput) end

---@param InDesiredPackagePath string
---@param InBlueprintPathName string
---@return UControlRigTestData
function UControlRigTestData.CreateNewAsset(InDesiredPackagePath, InBlueprintPathName) end

