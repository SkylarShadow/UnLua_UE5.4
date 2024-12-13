---@class UAbilityAsync_WaitAttributeChanged : UAbilityAsync
---@field public Changed MulticastDelegate
local UAbilityAsync_WaitAttributeChanged = {}

---Wait until the specified gameplay attribute is changed on a target ability system component
---It will keep listening as long as OnlyTriggerOnce = false
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitForAttributeChange instead.
---@param TargetActor AActor
---@param Attribute FGameplayAttribute
---@param OnlyTriggerOnce boolean @[opt] 
---@return UAbilityAsync_WaitAttributeChanged
function UAbilityAsync_WaitAttributeChanged.WaitForAttributeChanged(TargetActor, Attribute, OnlyTriggerOnce) end

---@param Attribute FGameplayAttribute
---@param NewValue number
---@param OldValue number
function UAbilityAsync_WaitAttributeChanged:AsyncWaitAttributeChangedDelegate__DelegateSignature(Attribute, NewValue, OldValue) end

