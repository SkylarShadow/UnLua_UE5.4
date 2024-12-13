---Describes a property in the property bag.
---@class FPropertyBagPropertyDesc
---@field public ValueTypeObject UObject @Pointer to object that defines the Enum, Struct, or Class.
---@field public ID FGuid @Unique ID for this property. Used as main identifier when copying values over.
---@field public Name string @Name for the property.
---@field public ValueType EPropertyBagPropertyType @Type of the value described by this property.
---@field public ContainerTypes FPropertyBagContainerTypes @Type of the container described by this property.
---@field public MetaData TArray<FPropertyBagPropertyDescMetaData> @Editor-only meta data for CachedProperty
---@field public MetaClass TSubclassOf<UObject> @Editor-only meta class for IClassViewer
local FPropertyBagPropertyDesc = {}
