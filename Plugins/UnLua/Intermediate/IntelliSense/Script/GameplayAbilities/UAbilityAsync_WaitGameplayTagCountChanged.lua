---@class UAbilityAsync_WaitGameplayTagCountChanged : UAbilityAsync
---@field public TagCountChanged MulticastDelegate
local UAbilityAsync_WaitGameplayTagCountChanged = {}

---Wait until the specified gameplay tag count changes on Target Actor's ability component
---If used in an ability graph, this async action will wait even after activation ends. It's recommended to use WaitGameplayTagCountChange instead.
---@param TargetActor AActor
---@param Tag FGameplayTag
---@return UAbilityAsync_WaitGameplayTagCountChanged
function UAbilityAsync_WaitGameplayTagCountChanged.WaitGameplayTagCountChangedOnActor(TargetActor, Tag) end

---@param TagCount integer
function UAbilityAsync_WaitGameplayTagCountChanged:AsyncWaitGameplayTagCountDelegate__DelegateSignature(TagCount) end

