---Class to represent an animation on the property of a camera, light, or scene node
---The list of supported properties is enumerated in EInterchangeAnimatedProperty.
---@class UInterchangeAnimationTrackNode : UInterchangeAnimationTrackBaseNode
local UInterchangeAnimationTrackNode = {}

---@param TargetedProperty integer
---@return boolean
function UInterchangeAnimationTrackNode:SetCustomTargetedProperty(TargetedProperty) end

---Set the property animated by this track. Usually the name of a UMovieSceneTrack, e.g for UMovieSceneColorTrack -> Color
---@param PropertyTrack string
---@return boolean
function UInterchangeAnimationTrackNode:SetCustomPropertyTrack(PropertyTrack) end

---Set the number of frames for the animation of this track.
---@param AttributeValue integer
---@return boolean
function UInterchangeAnimationTrackNode:SetCustomFrameCount(AttributeValue) end

---Set the payload key needed to retrieve the animation for this track.
---@param InUniqueId string
---@param InType EInterchangeAnimationPayLoadType
---@return boolean
function UInterchangeAnimationTrackNode:SetCustomAnimationPayloadKey(InUniqueId, InType) end

---Set the actor dependency to this object.
---@param DependencyUid string
---@return boolean
function UInterchangeAnimationTrackNode:SetCustomActorDependencyUid(DependencyUid) end

---@param TargetedProperty integer @[out] 
---@return boolean
function UInterchangeAnimationTrackNode:GetCustomTargetedProperty(TargetedProperty) end

---@param PropertyTrack string @[out] 
---@return boolean
function UInterchangeAnimationTrackNode:GetCustomPropertyTrack(PropertyTrack) end

---Get the number of frames for the animation of this track.
---@param AttributeValue integer @[out] 
---@return boolean
function UInterchangeAnimationTrackNode:GetCustomFrameCount(AttributeValue) end

---Get the payload key needed to retrieve the animation for this track.
---@param AnimationPayLoadKey FInterchangeAnimationPayLoadKey @[out] 
---@return boolean
function UInterchangeAnimationTrackNode:GetCustomAnimationPayloadKey(AnimationPayLoadKey) end

---Get the actor dependency to this object.
---@param DependencyUid string @[out] 
---@return boolean
function UInterchangeAnimationTrackNode:GetCustomActorDependencyUid(DependencyUid) end

