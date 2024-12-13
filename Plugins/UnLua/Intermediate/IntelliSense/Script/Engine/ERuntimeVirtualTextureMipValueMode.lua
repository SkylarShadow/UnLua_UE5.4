---Set how Mip levels are calculated.
---Internally we will convert to ETextureMipValueMode which is used by internal APIs.
---@class ERuntimeVirtualTextureMipValueMode
---@field public RVTMVM_None integer
---@field public RVTMVM_MipLevel integer
---@field public RVTMVM_MipBias integer
---@field public RVTMVM_RecalculateDerivatives integer
---@field public RVTMVM_MAX integer
local ERuntimeVirtualTextureMipValueMode = {}
