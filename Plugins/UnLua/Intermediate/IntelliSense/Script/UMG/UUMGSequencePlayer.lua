---@class UUMGSequencePlayer : UObject
---@field private Animation UWidgetAnimation @Animation being played
---@field private RootTemplateInstance FMovieSceneRootEvaluationTemplateInstance
local UUMGSequencePlayer = {}

---@param InUserTag string
function UUMGSequencePlayer:SetUserTag(InUserTag) end

---
---@return string
function UUMGSequencePlayer:GetUserTag() end

