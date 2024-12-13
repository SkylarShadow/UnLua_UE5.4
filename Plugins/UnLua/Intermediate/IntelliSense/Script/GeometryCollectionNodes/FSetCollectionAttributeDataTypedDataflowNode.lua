---Set attribute data in a Collection
---@class FSetCollectionAttributeDataTypedDataflowNode : FDataflowNode
---@field public Collection FManagedArrayCollection @Collection for the custom attribute
---@field public GroupName EStandardGroupNameEnum @Standard group names
---@field public CustomGroupName string @User specified group name
---@field public AttrName string @Attribute name
---@field public BoolAttributeData TArray<boolean> @Bool type attribute data
---@field public FloatAttributeData TArray<number> @Float type attribute data
---@field public DoubleAttributeData TArray<number> @Float type attribute data
---@field public Int32AttributeData TArray<integer> @Int type attribute data
---@field public StringAttributeData TArray<string> @Int type attribute data
---@field public Vector3fAttributeData TArray<FVector3f> @Vector3f type attribute data
---@field public Vector3dAttributeData TArray<FVector3d> @Vector3d type attribute data
local FSetCollectionAttributeDataTypedDataflowNode = {}
