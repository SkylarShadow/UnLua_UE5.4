---A library of commonly used functionality from the CachedAnimData family, exposed to blueprint.
---@class UCachedAnimDataLibrary : UBlueprintFunctionLibrary
local UCachedAnimDataLibrary = {}

---Returns whether a state is relevant (specified in the provided FCachedAnimStateData)
---@param InAnimInstance UAnimInstance
---@param CachedAnimStateData FCachedAnimStateData
---@return boolean
function UCachedAnimDataLibrary.StateMachine_IsStateRelevant(InAnimInstance, CachedAnimStateData) end

---Returns the weight of a state, relative to its state machine (specified in the provided FCachedAnimStateData)
---@param InAnimInstance UAnimInstance
---@param CachedAnimStateData FCachedAnimStateData
---@return number
function UCachedAnimDataLibrary.StateMachine_GetLocalWeight(InAnimInstance, CachedAnimStateData) end

---Returns the weight of a state, relative to the graph (specified in the provided FCachedAnimStateData)
---@param InAnimInstance UAnimInstance
---@param CachedAnimStateData FCachedAnimStateData
---@return number
function UCachedAnimDataLibrary.StateMachine_GetGlobalWeight(InAnimInstance, CachedAnimStateData) end

