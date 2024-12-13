---Renders a media source to a texture in editor builds.
---@class UMediaSourceRenderer : UObject
---@field private MediaPlayer UMediaPlayer @Holds the player we are using.
---@field private MediaSource UMediaSource @Holds the media source we are using.
---@field private MediaTexture UMediaTexture @Holds the media texture we are using.
local UMediaSourceRenderer = {}

---Callback when the media player is done seeking.
function UMediaSourceRenderer:OnSeekCompleted() end

