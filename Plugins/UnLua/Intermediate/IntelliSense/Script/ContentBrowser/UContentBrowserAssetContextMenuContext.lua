---@class UContentBrowserAssetContextMenuContext : UObject
---@field public CommonAssetDefinition UAssetDefinition
---@field public SelectedAssets TArray<FAssetData> @The currently selected assets in the content browser.
---@field public CommonClass TSubclassOf<UObject>
---@field public bCanBeModified boolean
---@field public bHasCookedPackages boolean
---@field public bContainsUnsupportedAssets boolean
local UContentBrowserAssetContextMenuContext = {}

---Loads the selected assets (if needed) which is based on AssetViewUtils::LoadAssetsIfNeeded, this exists primarily
---for backwards compatability.  Reliance on a black box to determine 'neededness' is not recommended, this function
---will likely be deprecated a few versions after GetSelectedObjects.
---@return TArray_UObject_
function UContentBrowserAssetContextMenuContext:LoadSelectedObjectsIfNeeded() end

---Loads all the selected assets and returns an array of the objects.
---@param LoadTags TSet_string_
---@return TArray_UObject_
function UContentBrowserAssetContextMenuContext:LoadSelectedObjects(LoadTags) end

---UE_DEPRECATED(5.2, "GetSelectedObjects has been deprecated.  We no longer automatically load assets on right click.  Please use SelectedAssets and determine whatever you need for your context menu options without actually loading the assets.  When you finally need all or a subset of the selected assets use LoadSelectedAssets or LoadSelectedAssetsIf")
---@return TArray_UObject_
function UContentBrowserAssetContextMenuContext:GetSelectedObjects() end

