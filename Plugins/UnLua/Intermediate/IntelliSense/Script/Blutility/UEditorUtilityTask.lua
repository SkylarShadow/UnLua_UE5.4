---@class UEditorUtilityTask : UObject
---@field private MyTaskManager UEditorUtilitySubsystem
---@field private MyParentTask UEditorUtilityTask
---@field private bCancelRequested boolean
local UEditorUtilityTask = {}

---@return boolean
function UEditorUtilityTask:WasCancelRequested() end

---@param Text string
function UEditorUtilityTask:SetTaskNotificationText(Text) end

function UEditorUtilityTask:Run() end

function UEditorUtilityTask:ReceiveCancelRequested() end

function UEditorUtilityTask:ReceiveBeginExecution() end

---@return string
function UEditorUtilityTask:GetTaskTitleOverride() end

function UEditorUtilityTask:FinishExecutingTask() end

