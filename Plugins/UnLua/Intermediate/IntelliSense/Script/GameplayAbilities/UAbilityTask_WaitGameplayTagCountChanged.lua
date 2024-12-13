---@class UAbilityTask_WaitGameplayTagCountChanged : UAbilityTask
---@field protected TagCountChanged MulticastDelegate
---@field protected OptionalExternalTarget UAbilitySystemComponent
local UAbilityTask_WaitGameplayTagCountChanged = {}

---Wait until the specified gameplay tag count has changed. By default this will look at the owner of this ability. OptionalExternalTarget can be set to make this look at another actor's tags for changes.
---@param OwningAbility UGameplayAbility
---@param Tag FGameplayTag
---@param InOptionalExternalTarget AActor @[opt] 
---@return UAbilityTask_WaitGameplayTagCountChanged
function UAbilityTask_WaitGameplayTagCountChanged.WaitGameplayTagCountChange(OwningAbility, Tag, InOptionalExternalTarget) end

