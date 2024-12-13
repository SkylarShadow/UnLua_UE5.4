---Base class for live link source settings (can be replaced by sources themselves)
---@class ULiveLinkSourceSettings : UObject
---@field public Mode ELiveLinkSourceMode @The the subject how to create the frame snapshot.
---@field public BufferSettings FLiveLinkSourceBufferManagementSettings @How the frame buffers are managed.
---@field public ConnectionString string @Connection information that is needed by the factory to recreate the source from a preset.
---@field public Factory TSubclassOf<ULiveLinkSourceFactory> @Factory used to create the source.
local ULiveLinkSourceSettings = {}

