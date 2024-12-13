---@class FMetasoundFrontendDocument
---@field public Metadata FMetasoundFrontendDocumentMetadata
---@field public Interfaces TSet<FMetasoundFrontendVersion>
---@field public RootGraph FMetasoundFrontendGraphClass
---@field public Subgraphs TArray<FMetasoundFrontendGraphClass>
---@field public Dependencies TArray<FMetasoundFrontendClass>
---@field private ArchetypeVersion FMetasoundFrontendVersion
---@field private InterfaceVersions TArray<FMetasoundFrontendVersion>
local FMetasoundFrontendDocument = {}
