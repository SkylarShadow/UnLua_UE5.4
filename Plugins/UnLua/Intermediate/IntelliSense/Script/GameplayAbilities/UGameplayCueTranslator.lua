---This is the base class for GameplayCue Translators. This is what games must extend from in order to add their own rules.
---These are not instantiated, and are basically just a holder for virtual functions that are called on the CDO.
---There are two main things this class provides:
---        1. A set of translation rules. E.g., "I translate GameplayCue.A.B.C into GameplayCue.X.B.C", or rather "I translate A into X". (GetTranslationNameSpawns)
---        2. A runtime function to actually do the translation, based on the actors and parameters involved in the gameplay cue event. (GameplayCueToTranslationIndex)
---@class UGameplayCueTranslator : UObject
local UGameplayCueTranslator = {}

