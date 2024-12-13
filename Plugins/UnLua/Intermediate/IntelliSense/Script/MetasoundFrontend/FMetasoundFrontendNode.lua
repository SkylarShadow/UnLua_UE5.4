---An FMetasoundFrontendNode represents a single instance of a FMetasoundFrontendClass
---@class FMetasoundFrontendNode
---@field private ID FGuid @Unique ID of this node.
---@field public ClassID FGuid @ID of FMetasoundFrontendClass corresponding to this node.
---@field public Name string @Name of node instance.
---@field public Interface FMetasoundFrontendNodeInterface @Interface of node instance.
---@field public InputLiterals TArray<FMetasoundFrontendVertexLiteral> @Default values for node inputs.
---@field public Style FMetasoundFrontendNodeStyle @Style info related to a node.
local FMetasoundFrontendNode = {}
