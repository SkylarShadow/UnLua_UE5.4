---@class UMetasoundEditorGraphExternalNode : UMetasoundEditorGraphNode
---@field protected ClassName FMetasoundFrontendClassName
---@field protected NodeID FGuid
---@field protected bIsClassNative boolean @Whether or not the referenced class is natively defined (false if defined in another asset). Cached from node implementation for fast access when validated.
local UMetasoundEditorGraphExternalNode = {}

