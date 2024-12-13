---Proxy in Details Panel
---@class UControlRigDetailPanelControlProxies : UObject
---@field protected ControlRigOnlyProxies TMap<UControlRig, FNameToProxyMap>
---@field protected SelectedControlRigProxies TArray<UControlRigControlsProxy> @proxies themselves contain weakobjectptr to the controlrig
---@field protected SequencerOnlyProxies TMap<UObject, FNameToProxyMap>
---@field protected SelectedSequencerProxies TArray<UControlRigControlsProxy>
local UControlRigDetailPanelControlProxies = {}

