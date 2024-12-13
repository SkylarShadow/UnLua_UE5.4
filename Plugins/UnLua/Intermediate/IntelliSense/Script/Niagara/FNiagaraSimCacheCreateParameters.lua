---@class FNiagaraSimCacheCreateParameters
---@field public AttributeCaptureMode ENiagaraSimCacheAttributeCaptureMode @How do we want to capture attributes for the simulation cache. The mode selected depends on what situations the cache can be used in.
---@field public bAllowRebasing boolean @When enabled allows the SimCache to be re-based. i.e. World space emitters can be moved to the new component's location
---@field public bAllowDataInterfaceCaching boolean @When enabled Data Interface data will be stored in the SimCache. This can result in a large increase to the cache size, depending on what Data Interfaces are used
---@field public bAllowInterpolation boolean @When enabled we allow the cache to be generated for interpolation. This will increase the memory usage for the cache slightly but can allow you to reduce the capture rate. By default we will capture and interpolate all Position & Quat types, you can adjust this using the include / exclude list.
---@field public bAllowVelocityExtrapolation boolean @When enabled we allow the cache to be generated for extrapolation. This will force the velocity attribute to be maintained.
---@field public bAllowSerializeLargeCache boolean @When enabled the cache will support serializing large amounts of cache data.
---@field public RebaseIncludeAttributes TArray<string> @List of Attributes to force include in the SimCache rebase, they should be the full path to the attribute For example, MyEmitter.Particles.MyQuat would force the particle attribute MyQuat to be included for MyEmitter
---@field public RebaseExcludeAttributes TArray<string> @List of Attributes to force exclude from the SimCache rebase, they should be the full path to the attribute For example, MyEmitter.Particles.MyQuat would force the particle attribute MyQuat to be included for MyEmitter
---@field public InterpolationIncludeAttributes TArray<string> @List of specific Attributes to include when using interpolation.  They must be types that are supported for interpolation. For example, MyEmitter.Particles.MyPosition would force MyPosition to be interpolated.
---@field public InterpolationExcludeAttributes TArray<string> @List of specific Attributes to exclude interpolation for.  They must be types that are supported for interpolation. For example, MyEmitter.Particles.MyPosition would force MyPosition to be interpolated.
---@field public ExplicitCaptureAttributes TArray<string> @List of attributes to capture when the capture attribute capture mode is set to explicit. For example, adding MyEmitter.Particles.Position will only gather that attribute inside the cache.
local FNiagaraSimCacheCreateParameters = {}
