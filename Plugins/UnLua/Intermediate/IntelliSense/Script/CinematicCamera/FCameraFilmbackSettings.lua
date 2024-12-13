---#note, this struct has a details customization in CameraFilmbackSettingsCustomization.cpp/h
---@class FCameraFilmbackSettings
---@field public SensorWidth number @Horizontal size of filmback or digital sensor, in mm.
---@field public SensorHeight number @Vertical size of filmback or digital sensor, in mm.
---@field public SensorAspectRatio number @Read-only. Computed from Sensor dimensions.
local FCameraFilmbackSettings = {}
