---Allows applying selected AreaClass to navmesh, using Volume's shape
---@class ANavModifierVolume : AVolume
---@field protected AreaClass TSubclassOf<UNavArea>
---@field protected bMaskFillCollisionUnderneathForNavmesh boolean @Experimental: if set, the 2D space occupied by the volume box will ignore FillCollisionUnderneathForNavmesh
---@field protected NavMeshResolution ENavigationDataResolution @Experimental: When not set to None, the navmesh tiles touched by the navigation modifier volume will be built using the highest resolution found.
local ANavModifierVolume = {}

