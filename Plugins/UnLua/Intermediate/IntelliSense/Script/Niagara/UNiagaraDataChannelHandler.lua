---@class UNiagaraDataChannelHandler : UObject
---@field protected DataChannel TWeakObjectPtr<UNiagaraDataChannel>
---@field protected Writer UNiagaraDataChannelWriter @Helper object allowing BP to write data in this channel.
---@field protected Reader UNiagaraDataChannelReader @Helper object allowing BP to read data in this channel.
local UNiagaraDataChannelHandler = {}

---@return UNiagaraDataChannelWriter
function UNiagaraDataChannelHandler:GetDataChannelWriter() end

---@return UNiagaraDataChannelReader
function UNiagaraDataChannelHandler:GetDataChannelReader() end

