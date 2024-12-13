---Widget that when drawn, will trigger the slate post buffer to update. Does not draw anything itself.
---This allows for you to perform layered UI / sampling effects with the GetSlatePost material functions,
---by placing this widget after UI you would like to be processed / sampled is drawn.
---* No Children
---@class UPostBufferUpdate : UWidget
---@field private bPerformDefaultPostBufferUpdate boolean @True if we should do the default post buffer update of the scene before any UI. If any PostBufferUpdate widget has this set as false, be default scene copy / processing will not occur.
---@field private BuffersToUpdate TArray<ESlatePostRT> @Buffers that we should update, all of these buffers will be affected by 'bPerformDefaultPostBufferUpdate' if disabled
local UPostBufferUpdate = {}

