---@class UObjectMixerEditorSettings : UObject
---@field public bSyncSelection boolean @If enabled, clicking an item in the mixer list will also select the item in the Scene Outliner. Alt + Click to select items in mixer without selecting the item in the Scene outliner. If disabled, selections will not sync unless Alt is held. Effectively, this is the opposite behavior.
---@field public bExpandTreeViewItemsByDefault boolean @If false, a new object will be created every time the filter object is accessed.
local UObjectMixerEditorSettings = {}

