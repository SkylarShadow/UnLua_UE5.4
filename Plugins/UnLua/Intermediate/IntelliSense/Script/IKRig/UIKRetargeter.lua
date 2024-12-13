---@class UIKRetargeter : UObject
---@field private Version integer @incremented by any edits that require re-initialization
---@field private SourceIKRigAsset TSoftObjectPtr<UIKRigDefinition> @The rig to copy animation FROM.
---@field private SourcePreviewMesh TSoftObjectPtr<USkeletalMesh> @Optional. Override the Skeletal Mesh to copy animation from. Uses the preview mesh from the Source IK Rig asset by default.
---@field private TargetIKRigAsset TSoftObjectPtr<UIKRigDefinition> @The rig to copy animation TO.
---@field private TargetPreviewMesh TSoftObjectPtr<USkeletalMesh> @Optional. Override the Skeletal Mesh to preview the retarget on. Uses the preview mesh from the Target IK Rig asset by default.
---@field public TargetMeshOffset FVector @The offset applied to the target mesh in the editor viewport.
---@field public TargetMeshScale number @Scale the target mesh in the viewport for easier visualization next to the source.
---@field public SourceMeshOffset FVector @The offset applied to the source mesh in the editor viewport.
---@field public bIgnoreRootLockInPreview boolean @When true, animation sequences with "Force Root Lock" turned On will act as though it is Off. This affects only the preview in the retarget editor. Use ExportRootLockMode to control exported animation behavior. This setting has no effect on runtime retargeting where root motion is copied from the source component.
---@field public bDebugDraw boolean @Toggle debug drawing for retargeting in the viewport.
---@field public bDrawFinalGoals boolean @Draw final IK goal locations.
---@field public bDrawSourceLocations boolean @Draw goal locations from source skeleton.
---@field public ChainDrawSize number @The visual size of the IK goals in the viewport.
---@field public ChainDrawThickness number @The thickness of lines on the IK goals in the viewport.
---@field public BoneDrawSize number @The visual size of the bones in the viewport (saved between sessions). This is set from the viewport Character>Bones menu
---@field public Controller UObject @The controller responsible for managing this asset's data (all editor mutation goes through this)
---@field private ChainSettings TArray<URetargetChainSettings> @Settings for how to map source chains to target chains.
---@field private RootSettings URetargetRootSettings @the retarget root settings
---@field private GlobalSettings UIKRetargetGlobalSettings @the retarget root settings
---@field private OpStack URetargetOpStack @the stack of ops to run after the retarget
---@field private Profiles TMap<string, FRetargetProfile> @settings profiles stored in this asset
---@field private CurrentProfile string
---@field private SourceRetargetPoses TMap<string, FIKRetargetPose> @The set of retarget poses for the SOURCE skeleton.
---@field private TargetRetargetPoses TMap<string, FIKRetargetPose> @The set of retarget poses for the TARGET skeleton.
---@field private CurrentSourceRetargetPose string @The current retarget pose to use for the SOURCE.
---@field private CurrentTargetRetargetPose string @The current retarget pose to use for the TARGET.
local UIKRetargeter = {}

---Set the root settings in a retarget profile (will set bApplyRootSettings to true).
---@param RetargetProfile FRetargetProfile @[out] 
---@param RootSettings FTargetRootSettings
function UIKRetargeter.SetRootSettingsInRetargetProfile(RetargetProfile, RootSettings) end

---Set the global settings in a retarget profile (will set bApplyGlobalSettings to true).
---@param RetargetProfile FRetargetProfile @[out] 
---@param GlobalSettings FRetargetGlobalSettings
function UIKRetargeter.SetGlobalSettingsInRetargetProfile(RetargetProfile, GlobalSettings) end

---Set the chain Speed Plant settings in a retarget profile (will set bApplyChainSettings to true).
---@param RetargetProfile FRetargetProfile @[out] 
---@param SpeedPlantSettings FTargetChainSpeedPlantSettings
---@param TargetChainName string
function UIKRetargeter.SetChainSpeedPlantSettingsInRetargetProfile(RetargetProfile, SpeedPlantSettings, TargetChainName) end

---Set the chain settings in a retarget profile (will set bApplyChainSettings to true).
---@param RetargetProfile FRetargetProfile @[out] 
---@param ChainSettings FTargetChainSettings
---@param TargetChainName string
function UIKRetargeter.SetChainSettingsInRetargetProfile(RetargetProfile, ChainSettings, TargetChainName) end

---Set the chain IK settings in a retarget profile (will set bApplyChainSettings to true).
---@param RetargetProfile FRetargetProfile @[out] 
---@param IKSettings FTargetChainIKSettings
---@param TargetChainName string
function UIKRetargeter.SetChainIKSettingsInRetargetProfile(RetargetProfile, IKSettings, TargetChainName) end

---Set the chain FK settings in a retarget profile (will set bApplyChainSettings to true).
---@param RetargetProfile FRetargetProfile @[out] 
---@param FKSettings FTargetChainFKSettings
---@param TargetChainName string
function UIKRetargeter.SetChainFKSettingsInRetargetProfile(RetargetProfile, FKSettings, TargetChainName) end

---Returns true if the target IK Rig has been assigned
---@return boolean
function UIKRetargeter:HasTargetIKRig() end

---Returns true if the source IK Rig has been assigned
---@return boolean
function UIKRetargeter:HasSourceIKRig() end

---Returns the root settings in the supplied Retarget Profile.
---@param RetargetProfile FRetargetProfile @[out] 
---@return FTargetRootSettings
function UIKRetargeter.GetRootSettingsFromRetargetProfile(RetargetProfile) end

---Returns the root settings in an IK Retargeter Asset using the given profile name (optional)
---@param RetargetAsset UIKRetargeter
---@param OptionalProfileName string
---@param OutSettings FTargetRootSettings @[out] 
function UIKRetargeter.GetRootSettingsFromRetargetAsset(RetargetAsset, OptionalProfileName, OutSettings) end

---Returns the global settings in the supplied Retarget Profile.
---@param RetargetProfile FRetargetProfile @[out] 
---@return FRetargetGlobalSettings
function UIKRetargeter.GetGlobalSettingsFromRetargetProfile(RetargetProfile) end

---Returns the global settings in an IK Retargeter Asset using the given profile name (optional)
---@param RetargetAsset UIKRetargeter
---@param OptionalProfileName string
---@param OutSettings FRetargetGlobalSettings @[out] 
function UIKRetargeter.GetGlobalSettingsFromRetargetAsset(RetargetAsset, OptionalProfileName, OutSettings) end

---Returns the chain settings associated with a given Goal in an IK Retargeter Asset using the given profile name (optional)
---@param RetargetAsset UIKRetargeter
---@param IKGoalName string
---@return FTargetChainSettings
function UIKRetargeter.GetChainUsingGoalFromRetargetAsset(RetargetAsset, IKGoalName) end

---Returns the chain settings associated with a given target chain in the supplied Retarget Profile.
---@param RetargetProfile FRetargetProfile @[out] 
---@param TargetChainName string
---@return FTargetChainSettings
function UIKRetargeter.GetChainSettingsFromRetargetProfile(RetargetProfile, TargetChainName) end

---Returns the chain settings associated with a given target chain in an IK Retargeter Asset using the given profile name (optional)
---@param RetargetAsset UIKRetargeter
---@param TargetChainName string
---@param OptionalProfileName string
---@return FTargetChainSettings
function UIKRetargeter.GetChainSettingsFromRetargetAsset(RetargetAsset, TargetChainName, OptionalProfileName) end

