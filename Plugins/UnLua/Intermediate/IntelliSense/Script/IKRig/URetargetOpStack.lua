---wrapper around a TArray of Retarget Ops for display in details panel
---@class URetargetOpStack : UObject
---@field public RetargetOps TArray<URetargetOpBase> @stack of operations to run AFTER the main retarget phases (Order is: Root/IK/FK/Post)
local URetargetOpStack = {}

