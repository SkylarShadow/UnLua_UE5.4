---Filter for replicated objects that have their location stored in their fragment
---This filter may be less efficient since it's run after Polling and DirtyData copying and cannot cull out objects from those operations.
---@class UNetObjectGridFragmentLocFilter : UNetObjectGridFilter
local UNetObjectGridFragmentLocFilter = {}

