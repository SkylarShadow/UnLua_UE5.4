---Test structure for UObject properties.
---@class FStructSerializerObjectTestStruct
---@field public RawClass TSubclassOf<UObject>
---@field public WrappedClass TSubclassOf<UObject>
---@field public SubClass TSubclassOf<UMetaData>
---@field public SoftClass TSoftClassPtr<UMetaData>
---@field public RawObject UObject
---@field public WrappedObject UObject
---@field public WeakObject TWeakObjectPtr<UMetaData>
---@field public SoftObject TSoftObjectPtr<UMetaData>
---@field public ClassPath FSoftClassPath
---@field public ObjectPath FSoftObjectPath
local FStructSerializerObjectTestStruct = {}