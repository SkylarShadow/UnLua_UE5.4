---Rules to use when deciding how to unload registry items and related assets
---@class FDataRegistryCachePolicy
---@field public bCacheIsAlwaysVolatile boolean @If this is true, the cache is always considered volatile when returning EDataRegistryCacheResult
---@field public bUseCurveTableCacheVersion boolean @If this is true, the cache version is synchronized with the global CurveTable cache version
---@field public MinNumberKept integer @Will not release items if fewer then this number loaded, 0 means infinite
---@field public MaxNumberKept integer @Maximum number of items to keep loaded, 0 means infinite
---@field public ForceKeepSeconds number @Any item accessed within this amount of seconds is never unloaded
---@field public ForceReleaseSeconds number @Any item not accessed within this amount of seconds is always unloaded
local FDataRegistryCachePolicy = {}
