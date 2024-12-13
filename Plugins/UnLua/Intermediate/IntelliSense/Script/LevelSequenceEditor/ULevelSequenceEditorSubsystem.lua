---ULevelSequenceEditorSubsystem
---Subsystem for level sequence editor related utilities to scripts
---@class ULevelSequenceEditorSubsystem : UEditorSubsystem
---@field private CurveEditorArray TArray<USequencerCurveEditorObject> @property array of the curve editors
local ULevelSequenceEditorSubsystem = {}

---Sync section using source timecode
---@param Sections TArray_UMovieSceneSection_
function ULevelSequenceEditorSubsystem:SyncSectionsUsingSourceTimecode(Sections) end

---Snap sections to timeline using source timecode
---@param Sections TArray_UMovieSceneSection_
function ULevelSequenceEditorSubsystem:SnapSectionsToTimelineUsingSourceTimecode(Sections) end

---Replaces the binding with the given actors
---@param Actors TArray_AActor_
---@param ObjectBinding FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:ReplaceBindingWithActors(Actors, ObjectBinding) end

---Remove missing objects bound to this track
---@param ObjectBinding FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:RemoveInvalidBindings(ObjectBinding) end

---Remove all bound actors from this track
---@param ObjectBinding FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:RemoveAllBindings(ObjectBinding) end

---Removes the given actors from the binding
---@param Actors TArray_AActor_
---@param ObjectBinding FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:RemoveActorsFromBinding(Actors, ObjectBinding) end

---Rebind the component binding to the requested component
---@param ComponentBindings TArray_FMovieSceneBindingProxy_
---@param ComponentName string
function ULevelSequenceEditorSubsystem:RebindComponent(ComponentBindings, ComponentName) end

---Paste tracks
---Paste tracks from the given TextToImport string (used in conjunction with CopyTracks).
---If TextToImport is empty, the contents of the clipboard will be used.
---@param TextToImport string
---@param PasteTracksParams FMovieScenePasteTracksParams
---@param OutTracks TArray_UMovieSceneTrack_ @[out] 
---@return boolean
function ULevelSequenceEditorSubsystem:PasteTracks(TextToImport, PasteTracksParams, OutTracks) end

---Paste sections
---Paste sections from the given TextToImport string (used in conjunction with CopySections).
---If TextToImport is empty, the contents of the clipboard will be used.
---@param TextToImport string
---@param PasteSectionsParams FMovieScenePasteSectionsParams
---@param OutSections TArray_UMovieSceneSection_ @[out] 
---@return boolean
function ULevelSequenceEditorSubsystem:PasteSections(TextToImport, PasteSectionsParams, OutSections) end

---Paste folders
---Paste folders from the given TextToImport string (used in conjunction with CopyFolders).
---If TextToImport is empty, the contents of the clipboard will be used.
---@param TextToImport string
---@param PasteFoldersParams FMovieScenePasteFoldersParams
---@param OutFolders TArray_UMovieSceneFolder_ @[out] 
---@return boolean
function ULevelSequenceEditorSubsystem:PasteFolders(TextToImport, PasteFoldersParams, OutFolders) end

---Paste bindings
---Paste bindings from the given TextToImport string (used in conjunction with CopyBindings).
---If TextToImport is empty, the contents of the clipboard will be used.
---@param TextToImport string
---@param PasteBindingsParams FMovieScenePasteBindingsParams
---@param OutObjectBindings TArray_FMovieSceneBindingProxy_ @[out] 
---@return boolean
function ULevelSequenceEditorSubsystem:PasteBindings(TextToImport, PasteBindingsParams, OutObjectBindings) end

---Retrieve the scripting layer
---@return USequencerModuleScriptingLayer
function ULevelSequenceEditorSubsystem:GetScriptingLayer() end

---Retrieve the curve editor
---@return USequencerCurveEditorObject
function ULevelSequenceEditorSubsystem:GetCurveEditor() end

---Attempts to automatically fix up broken actor references in the current scene
function ULevelSequenceEditorSubsystem:FixActorReferences() end

---Create a cine camera actor and add it to Sequencer
---@param bSpawnable boolean
---@param OutActor ACineCameraActor @[out] 
---@return FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:CreateCamera(bSpawnable, OutActor) end

---Copy tracks
---The copied tracks will be saved to the clipboard as well as assigned to the ExportedText string.
---The ExportedTest string can be used in conjunction with PasteTracks if, for example, pasting copy/pasting multiple
---tracks without relying on a single clipboard.
---@param Tracks TArray_UMovieSceneTrack_
---@param ExportedText string @[out] 
function ULevelSequenceEditorSubsystem:CopyTracks(Tracks, ExportedText) end

---Copy sections
---The copied sections will be saved to the clipboard as well as assigned to the ExportedText string.
---The ExportedTest string can be used in conjunction with PasteSections if, for example, pasting copy/pasting multiple
---sections without relying on a single clipboard.
---@param Sections TArray_UMovieSceneSection_
---@param ExportedText string @[out] 
function ULevelSequenceEditorSubsystem:CopySections(Sections, ExportedText) end

---Copy folders
---The copied folders will be saved to the clipboard as well as assigned to the ExportedText string.
---The ExportedTest string can be used in conjunction with PasteFolders if, for example, pasting copy/pasting multiple
---folders without relying on a single clipboard.
---@param Folders TArray_UMovieSceneFolder_
---@param ExportedText string @[out] 
function ULevelSequenceEditorSubsystem:CopyFolders(Folders, ExportedText) end

---Copy bindings
---The copied bindings will be saved to the clipboard as well as assigned to the ExportedText string.
---The ExportedTest string can be used in conjunction with PasteBindings if, for example, pasting copy/pasting multiple
---bindings without relying on a single clipboard.
---@param Bindings TArray_FMovieSceneBindingProxy_
---@param ExportedText string @[out] 
function ULevelSequenceEditorSubsystem:CopyBindings(Bindings, ExportedText) end

---Convert to spawnable. If there are multiple objects assigned to the possessable, multiple spawnables will be created.
---@param ObjectBinding FMovieSceneBindingProxy
---@return TArray_FMovieSceneBindingProxy_
function ULevelSequenceEditorSubsystem:ConvertToSpawnable(ObjectBinding) end

---Convert to possessable
---@param ObjectBinding FMovieSceneBindingProxy
---@return FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:ConvertToPossessable(ObjectBinding) end

---@param ObjectBindings TArray_FMovieSceneBindingProxy_
---@param InSettings FBakingAnimationKeySettings
---@param Params FMovieSceneScriptingParams @[opt] 
---@return boolean
function ULevelSequenceEditorSubsystem:BakeTransformWithSettings(ObjectBindings, InSettings, Params) end

---@param ObjectBindings TArray_FMovieSceneBindingProxy_
---@param BakeInTime FFrameTime
---@param BakeOutTime FFrameTime
---@param BakeInterval FFrameTime
---@param Params FMovieSceneScriptingParams @[opt] 
function ULevelSequenceEditorSubsystem:BakeTransform(ObjectBindings, BakeInTime, BakeOutTime, BakeInterval, Params) end

---Assigns the given actors to the binding
---@param Actors TArray_AActor_
---@param ObjectBinding FMovieSceneBindingProxy
function ULevelSequenceEditorSubsystem:AddActorsToBinding(Actors, ObjectBinding) end

---Add existing actors to Sequencer. Tracks will be automatically added based on default track settings.
---@param Actors TArray_AActor_
---@return TArray_FMovieSceneBindingProxy_
function ULevelSequenceEditorSubsystem:AddActors(Actors) end

