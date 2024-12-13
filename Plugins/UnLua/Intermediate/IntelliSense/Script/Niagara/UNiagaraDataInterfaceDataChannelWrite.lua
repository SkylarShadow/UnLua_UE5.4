---@class UNiagaraDataInterfaceDataChannelWrite : UNiagaraDataInterface
---@field public AllocationMode ENiagaraDataChannelAllocationMode @How should we allocate the buffer into which we write data.
---@field public AllocationCount integer @How many elements to allocate for writing per frame? Usage is defendant on AllocationMode. TODO: Allow allocation count to be controlled dynamically from script?
---@field public bPublishToGame boolean @Whether the data generated by this DI should be published to the world game data channel. This is require to allow game BP and C++ to read this data.
---@field public bPublishToCPU boolean @Whether the data generated by this DI should be published to CPU emitters in other Niagara systems.
---@field public bPublishToGPU boolean @Whether the data generated by this DI should be published to GPU emitters in other Niagara systems.
---@field public bUpdateDestinationDataEveryTick boolean @Whether this DI should request updated destination data from the Data Channel each tick. Some Data Channels have multiple separate data elements for things such as spacial subdivision. Each DI will request the correct one for it's owning system instance from the data channel. Depending on the data channel this could be an expensive search so we should avoid doing this every tick if possible.
---@field public Channel UNiagaraDataChannelAsset @The data channel to write to.
---@field protected CompiledData FNDIDataChannelWriteCompiledData
local UNiagaraDataInterfaceDataChannelWrite = {}
