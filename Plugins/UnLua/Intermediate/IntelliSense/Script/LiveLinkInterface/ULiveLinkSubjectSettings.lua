---Base class for live link subject settings
---@class ULiveLinkSubjectSettings : UObject
---@field public PreProcessors TArray<ULiveLinkFramePreProcessor> @List of available preprocessor the subject will use.
---@field public InterpolationProcessor ULiveLinkFrameInterpolationProcessor @The interpolation processor the subject will use.
---@field public Translators TArray<ULiveLinkFrameTranslator> @List of available translator the subject can use.
---@field public Role TSubclassOf<ULiveLinkRole>
---@field public FrameRate FFrameRate @Last FrameRate estimated by the subject. If in Timecode mode, this will come directly from the QualifiedFrameTime.
---@field public bRebroadcastSubject boolean @If enabled, rebroadcast this subject
local ULiveLinkSubjectSettings = {}

