---@class UMovieSceneDataLayerSection : UMovieSceneSection
---@field private DataLayers TArray<FActorDataLayer>
---@field private DataLayerAssets TArray<UDataLayerAsset> @A list of data layers that should be loaded or unloaded by this section
---@field private DesiredState EDataLayerRuntimeState @The desired state for the data layers on this section when the section is actively evaluating.
---@field private PrerollState EDataLayerRuntimeState @The desired state for the data layers on this section when the section is pre or post-rolling.
---@field private bFlushOnActivated boolean @Determine if we need to flush level streaming when the data layers are activated. May result in a hitch.
---@field private bFlushOnUnload boolean @Determine if we need to flush level streaming when the data layers unloads.
---@field private bPerformGCOnUnload boolean @Determine if we need to perform a GC when the data layers unloads.
local UMovieSceneDataLayerSection = {}

---@param InPrerollState EDataLayerRuntimeState
function UMovieSceneDataLayerSection:SetPrerollState(InPrerollState) end

---@param bPerformGCOnUnload boolean
function UMovieSceneDataLayerSection:SetPerformGCOnUnload(bPerformGCOnUnload) end

---@param bFlushOnUnload boolean
function UMovieSceneDataLayerSection:SetFlushOnUnload(bFlushOnUnload) end

---@param bFlushOnActivated boolean
function UMovieSceneDataLayerSection:SetFlushOnActivated(bFlushOnActivated) end

---@param InDesiredState EDataLayerRuntimeState
function UMovieSceneDataLayerSection:SetDesiredState(InDesiredState) end

---@param InDataLayers TArray_FActorDataLayer_
function UMovieSceneDataLayerSection:SetDataLayers(InDataLayers) end

---@param InDataLayerAssets TArray_UDataLayerAsset_
function UMovieSceneDataLayerSection:SetDataLayerAssets(InDataLayerAssets) end

---@return boolean
function UMovieSceneDataLayerSection:HasPreRoll() end

---@return EDataLayerRuntimeState
function UMovieSceneDataLayerSection:GetPrerollState() end

---@return boolean
function UMovieSceneDataLayerSection:GetPerformGCOnUnload() end

---@return boolean
function UMovieSceneDataLayerSection:GetFlushOnUnload() end

---@return boolean
function UMovieSceneDataLayerSection:GetFlushOnActivated() end

---@return EDataLayerRuntimeState
function UMovieSceneDataLayerSection:GetDesiredState() end

---@return TArray_FActorDataLayer_
function UMovieSceneDataLayerSection:GetDataLayers() end

---@return TArray_UDataLayerAsset_
function UMovieSceneDataLayerSection:GetDataLayerAssets() end

