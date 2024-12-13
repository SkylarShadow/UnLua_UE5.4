---A data driven table for applying gameplay effects based on tag count. This allows designers to map a
---"tag count" -> "response Gameplay Effect" relationship.
---For example, "for every count of "Status.Haste" I get 1 level of GE_Response_Haste. This class facilitates
---building this table and automatically registering and responding to tag events on the ability system component.
---@class UGameplayTagReponseTable : UDataAsset
---@field public Entries TArray<FGameplayTagResponseTableEntry>
local UGameplayTagReponseTable = {}

---@param Tag FGameplayTag
---@param NewCount integer
---@param ASC UAbilitySystemComponent
---@param idx integer
function UGameplayTagReponseTable:TagResponseEvent(Tag, NewCount, ASC, idx) end

