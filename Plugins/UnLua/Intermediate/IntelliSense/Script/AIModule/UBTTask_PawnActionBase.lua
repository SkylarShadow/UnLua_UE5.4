---Base class for managing pawn actions
---Task will set itself as action observer before pushing it to AI Controller,
---override OnActionEvent if you need any special event handling.
---Please use result returned by PushAction for ExecuteTask function.
---@class UBTTask_PawnActionBase : UBTTaskNode
local UBTTask_PawnActionBase = {}

