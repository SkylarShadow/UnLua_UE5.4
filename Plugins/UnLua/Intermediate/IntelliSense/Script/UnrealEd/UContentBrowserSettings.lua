---Implements content browser settings.  These are global not per-project
---@class UContentBrowserSettings : UObject
---@field public NumObjectsToLoadBeforeWarning integer @The number of objects to load at once in the Content Browser before displaying a warning about loading many assets
---@field public RealTimeThumbnails boolean @Whether to render thumbnails for loaded assets in real-time in the Content Browser
---@field public DisplayFolders boolean @Whether to display folders in the asset view of the content browser. Note that this implies 'Show Only Assets in Selected Folders'.
---@field public DisplayEmptyFolders boolean @Whether to empty display folders in the asset view of the content browser.
---@field public FilterRecursively boolean @Whether to filter recursively when a filter is applied in the asset view of the content browser.
---@field public bShowAllFolder boolean @Whether to group root folders under a common folder in the path view
---@field public bOrganizeFolders boolean @Whether to organize folders in the content browser
---@field public bDisplayContentFolderSuffix boolean @Whether to append 'Content' text to displayed folder names
---@field public bDisplayFriendlyNameForPluginFolders boolean @Whether display friendly name as plugin folder names
---@field public bEnableRealtimeMaterialInstanceThumbnails boolean @Enables the rendering of Material Instance thumbnail previews
---@field private DisplayEngineFolder boolean @Whether to display the engine folder in the assets view of the content browser.
---@field private DisplayDevelopersFolder boolean @Whether to display the developers folder in the path view of the content browser
---@field private DisplayL10NFolder boolean
---@field private DisplayPluginFolders boolean @List of plugin folders to display in the content browser.
---@field private DisplayFavorites boolean
---@field private DisplayCppFolders boolean
---@field private IncludeClassNames boolean
---@field private IncludeAssetPaths boolean
---@field private IncludeCollectionNames boolean
local UContentBrowserSettings = {}

