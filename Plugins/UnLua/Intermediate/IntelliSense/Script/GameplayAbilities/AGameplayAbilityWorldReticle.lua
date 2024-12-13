---Reticles allow targeting to be visualized. Tasks can spawn these. Artists/designers can create BPs for these.
---@class AGameplayAbilityWorldReticle : AActor
---@field public Parameters FWorldReticleParameters
---@field public bFaceOwnerFlat boolean @Makes the reticle's default owner-facing behavior operate in 2D (flat) instead of 3D (pitched). Defaults to true.
---@field public bSnapToTargetedActor boolean @If the target is an actor snap to it's location
---@field protected bIsTargetValid boolean @This indicates whether or not the targeting actor considers the current target to be valid. Defaults to true.
---@field protected bIsTargetAnActor boolean @This indicates whether or not the targeting reticle is pointed at an actor. Defaults to false.
---@field protected PrimaryPC APlayerController @This is used in the process of determining whether we should replicate to a specific client.
---@field protected TargetingActor AGameplayAbilityTargetActor @In the future, we may want to grab things like sockets off of this.
local AGameplayAbilityWorldReticle = {}

---@param ParamName string
---@param value FVector
function AGameplayAbilityWorldReticle:SetReticleMaterialParamVector(ParamName, value) end

---@param ParamName string
---@param value number
function AGameplayAbilityWorldReticle:SetReticleMaterialParamFloat(ParamName, value) end

---Called whenever bIsTargetValid changes value.
---@param bNewValue boolean
function AGameplayAbilityWorldReticle:OnValidTargetChanged(bNewValue) end

---Called whenever bIsTargetAnActor changes value.
---@param bNewValue boolean
function AGameplayAbilityWorldReticle:OnTargetingAnActor(bNewValue) end

function AGameplayAbilityWorldReticle:OnParametersInitialized() end

---@param bFaceIn2D boolean
function AGameplayAbilityWorldReticle:FaceTowardSource(bFaceIn2D) end

