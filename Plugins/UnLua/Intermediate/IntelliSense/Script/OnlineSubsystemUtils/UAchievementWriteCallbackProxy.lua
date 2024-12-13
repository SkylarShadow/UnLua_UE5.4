---@class UAchievementWriteCallbackProxy : UOnlineBlueprintCallProxyBase
---@field public OnSuccess MulticastDelegate @Called when there is a successful achievement write
---@field public OnFailure MulticastDelegate @Called when there is an unsuccessful achievement write
local UAchievementWriteCallbackProxy = {}

---Writes progress about an achievement to the default online subsystem
---  AchievementName is the ID of the achievement to update progress on
---  Progress is the reported progress toward accomplishing the achievement
---  UserTag is not used internally, but it is returned on success or failure
---@param WorldContextObject UObject
---@param PlayerController APlayerController
---@param AchievementName string
---@param Progress number @[opt] 
---@param UserTag integer @[opt] 
---@return UAchievementWriteCallbackProxy
function UAchievementWriteCallbackProxy.WriteAchievementProgress(WorldContextObject, PlayerController, AchievementName, Progress, UserTag) end

