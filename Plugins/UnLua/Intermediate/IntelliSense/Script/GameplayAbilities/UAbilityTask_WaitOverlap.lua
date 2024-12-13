---Fixme: this is still incomplete and probablyh not what most games want for melee systems.
---        -Only actually activates on Blocking hits
---        -Uses first PrimitiveComponent instead of being able to specify arbitrary component.
---@class UAbilityTask_WaitOverlap : UAbilityTask
---@field public OnOverlap MulticastDelegate
local UAbilityTask_WaitOverlap = {}

---Wait until an overlap occurs. This will need to be better fleshed out so we can specify game specific collision requirements
---@param OwningAbility UGameplayAbility
---@return UAbilityTask_WaitOverlap
function UAbilityTask_WaitOverlap.WaitForOverlap(OwningAbility) end

---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UAbilityTask_WaitOverlap:OnHitCallback(HitComp, OtherActor, OtherComp, NormalImpulse, Hit) end

