---@class FControlRigComponentMappedElement
---@field public ComponentReference FSoftComponentReference @The component to map to the Control Rig
---@field public TransformIndex integer @An optional index that can be used with components with multiple transforms (for example the InstancedStaticMeshComponent)
---@field public TransformName string @An optional name that can be used with components that have sockets (for example the SkeletalMeshComponent)
---@field public ElementType ERigElementType @The type of element this is mapped to
---@field public ElementName string @The name of the element to map to
---@field public Direction EControlRigComponentMapDirection @The direction (input / output) to be used for mapping an element
---@field public Offset FTransform @The offset transform to apply
---@field public Weight number @defines how much the mapped element should be driven
---@field public Space EControlRigComponentSpace @space in which the mapping happens
---@field public SceneComponent USceneComponent
---@field public ElementIndex integer
---@field public SubIndex integer
local FControlRigComponentMappedElement = {}