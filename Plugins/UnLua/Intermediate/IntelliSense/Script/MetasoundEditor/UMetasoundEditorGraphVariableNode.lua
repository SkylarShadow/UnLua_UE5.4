---Represents any of the several variable node types (Accessor, DeferredAccessor, Mutator).
---@class UMetasoundEditorGraphVariableNode : UMetasoundEditorGraphMemberNode
---@field protected ClassType EMetasoundFrontendClassType @Class type of the frontend node (Accessor, DeferredAccessor or Mutator)
---@field protected ClassName FMetasoundFrontendClassName @Class name of the frontend node.
---@field protected NodeID FGuid @ID of the frontend node.
---@field public Variable UMetasoundEditorGraphVariable @Associated graph variable.
local UMetasoundEditorGraphVariableNode = {}

