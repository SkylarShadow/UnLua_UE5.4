---Dynamic data for camera
---@class FLiveLinkCameraFrameData : FLiveLinkTransformFrameData
---@field public FieldOfView number @Field of View of the camera in degrees
---@field public AspectRatio number @Aspect Ratio of the camera (Width / Heigth)
---@field public FocalLength number @Focal length of the camera
---@field public Aperture number @Aperture of the camera in terms of f-stop
---@field public FocusDistance number @Focus distance of the camera in cm. Works only in manual focus method
---@field public ProjectionMode ELiveLinkCameraProjectionMode @ProjectionMode of the camera (Perspective, Orthographic, etc...)
local FLiveLinkCameraFrameData = {}
