---@class UAudioParameterControllerInterface : UInterface
local UAudioParameterControllerInterface = {}

---Executes a named trigger.  Does *not* cache trigger value, so only executes if the sound
---is already playing.  If the intent is for the trigger to execute immediately (if playing)
---and be called on initialization for all future instances, call 'SetBoolParameter' with the
---intended initial trigger behavior (true if trigger desired on initialization, false if not).
---@param InName string
function UAudioParameterControllerInterface:SetTriggerParameter(InName) end

---Sets a named String
---@param InName string
---@param InValue string
function UAudioParameterControllerInterface:SetStringParameter(InName, InValue) end

---Sets a named String Array
---@param InName string
---@param InValue TArray_string_
function UAudioParameterControllerInterface:SetStringArrayParameter(InName, InValue) end

---Sets an array of parameters as a batch
---@param InParameters TArray_FAudioParameter_
function UAudioParameterControllerInterface:SetParameters_Blueprint(InParameters) end

---Sets a named UObject
---@param InName string
---@param InValue UObject
function UAudioParameterControllerInterface:SetObjectParameter(InName, InValue) end

---Sets a named UObject Array
---@param InName string
---@param InValue TArray_UObject_
function UAudioParameterControllerInterface:SetObjectArrayParameter(InName, InValue) end

---Sets a named Int32
---@param InName string
---@param InInt integer
function UAudioParameterControllerInterface:SetIntParameter(InName, InInt) end

---Sets a named Int32 Array
---@param InName string
---@param InValue TArray_integer_
function UAudioParameterControllerInterface:SetIntArrayParameter(InName, InValue) end

---Sets a named Float
---@param InName string
---@param InFloat number
function UAudioParameterControllerInterface:SetFloatParameter(InName, InFloat) end

---Sets a named Float Array
---@param InName string
---@param InValue TArray_number_
function UAudioParameterControllerInterface:SetFloatArrayParameter(InName, InValue) end

---Sets a named Boolean
---@param InName string
---@param InBool boolean
function UAudioParameterControllerInterface:SetBoolParameter(InName, InBool) end

---Sets a named Boolean Array
---@param InName string
---@param InValue TArray_boolean_
function UAudioParameterControllerInterface:SetBoolArrayParameter(InName, InValue) end

---Resets all parameters to their original values.
function UAudioParameterControllerInterface:ResetParameters() end

