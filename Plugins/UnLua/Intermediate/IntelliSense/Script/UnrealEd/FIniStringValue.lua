---Helper struct for setting string console ini values.
---@class FIniStringValue
---@field public Section string @From .ini. Ex: /Script/Engine.RendererSettings
---@field public Key string @From .ini. Ex: r.GPUSkin.Support16BitBoneIndex
---@field public Value string @From .ini. Ex: True
---@field public Filename string @From .ini, relative to {PROJECT}. Ex: /Config/DefaultEngine.ini
local FIniStringValue = {}
