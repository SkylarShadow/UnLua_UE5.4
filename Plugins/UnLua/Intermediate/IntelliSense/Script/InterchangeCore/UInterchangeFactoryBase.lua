---Asset factory implementation:
---The first three steps use the Interchange factory node to import or reimport the UObject:
---1. BeginImportAsset_GameThread - Create the asset UObject. You can also import source data (retrieve payloads) and set up properties on the game thread.
---2. ImportAsset_Async - Import source data (retrieve payloads) and set up properties asynchronously on any thread.
---3. EndImportAsset_GameThread - Anything you need to do on the game thread to finalize the import source data and set up properties. For example, conflict resolution that needs UI.
---The last two steps are helpful to change the imported or reimported UObject before and after the PostEditChange (render data build) is called on the asset.
---4. SetupObject_GameThread - Do any UObject setup required before the build (before PostEditChange), the UObject dependencies should exist and have all the source data and properties imported.
---5. FinalizeObject_GameThread - Do any final UObject setup after the build (after PostEditChange). Note that the build of an asset can be asynchronous and this function will be call after the async build is done.
---Scene factory implementation:
---1. ImportSceneObject_GameThread - Create an actor in a level.
---@class UInterchangeFactoryBase : UObject
---@field public Results UInterchangeResultsContainer
local UInterchangeFactoryBase = {}

---Return the UClass this factory can create.
---@return TSubclassOf_UObject_
function UInterchangeFactoryBase:GetFactoryClass() end

