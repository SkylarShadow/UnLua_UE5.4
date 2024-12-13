---Builder used to support dynamically generating MetaSound documents at runtime. Builder contains caches that speed up
---common search and modification operations on a given document, which may result in slower performance on construction,
---but faster manipulation of its managed document.  The builder's managed copy of a document is expected to not be modified
---by any external system to avoid cache becoming stale.
---@class FMetaSoundFrontendDocumentBuilder
---@field private DocumentInterface TScriptInterface<UMetaSoundDocumentInterface>
local FMetaSoundFrontendDocumentBuilder = {}
