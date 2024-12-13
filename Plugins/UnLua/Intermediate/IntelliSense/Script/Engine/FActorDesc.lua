---Snapshot of an actor descriptor, which represents the state of an actor on disk.
---The actor may or may not be loaded.
---@class FActorDesc
---@field public Guid FGuid @The actor GUID of this descriptor.
---@field public NativeClass TSubclassOf<UObject> @Actor first native class.
---@field public Class FSoftObjectPath @Actor class, can point to a native or Blueprint class and may be redirected.
---@field public Name string @Internal name of the acgor.
---@field public Label string @Actor's label.
---@field public Bounds FBox @Streaming bounds of this actor.
---@field public RuntimeGrid string @Actor's target runtime grid.
---@field public bIsSpatiallyLoaded boolean @Actor's streaming state.
---@field public bActorIsEditorOnly boolean @Actor's editor-only property.
---@field public ActorPackage string @Actor's package name.
---@field public ActorPath string @Actor's path name.
---@field public DataLayerAssets TArray<FSoftObjectPath> @Actor's data layer assets.
local FActorDesc = {}
