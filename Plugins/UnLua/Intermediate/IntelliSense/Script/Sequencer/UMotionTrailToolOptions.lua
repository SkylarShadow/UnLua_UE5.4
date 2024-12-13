---TODO: option to make tick size proportional to distance from camera to get a sense of perspective and scale
---@class UMotionTrailToolOptions : UObject
---@field public bShowTrails boolean @Whether or not to show motion trails
---@field public TrailColor FLinearColor @The color of the motion trail
---@field public bShowFullTrail boolean @Whether or not to show the full motion trail
---@field public TrailThickness number @The thickness of the motion trail
---@field public FramesBefore integer @The number of frames to draw before the start of the trail. Requires not showing the full trail
---@field public FramesAfter integer @The number of frames to draw after the end of the trail. Requires not showing the full trail
---@field public bShowKeys boolean @Whether or not to show keys on the motion trail
---@field public bShowFrameNumber boolean @Whether or not to show frame numbers for the keys on the motion trail
---@field public KeyColor FLinearColor @The color of the keys
---@field public KeySize number @The size of the keys
---@field public bShowMarks boolean @Whether or not to show marks along the motion trail
---@field public MarkColor FLinearColor @The color of the marks
---@field public MarkSize number @The size of the marks
---@field public bLockMarksToFrames boolean @Whether or not to lock the marks to the frames
---@field public SecondsPerMark number @The seconds per mark
local UMotionTrailToolOptions = {}

