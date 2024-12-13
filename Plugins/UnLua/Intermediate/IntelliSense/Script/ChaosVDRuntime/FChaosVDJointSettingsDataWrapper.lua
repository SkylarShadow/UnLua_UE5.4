---@class FChaosVDJointSettingsDataWrapper : FChaosVDWrapperDataBase
---@field public ConnectorTransforms FTransform
---@field public Stiffness number
---@field public LinearProjection number
---@field public AngularProjection number
---@field public ShockPropagation number
---@field public TeleportDistance number
---@field public TeleportAngle number
---@field public ParentInvMassScale number
---@field public bCollisionEnabled boolean
---@field public bMassConditioningEnabled boolean
---@field public bSoftLinearLimitsEnabled boolean
---@field public bSoftTwistLimitsEnabled boolean
---@field public bSoftSwingLimitsEnabled boolean
---@field public bAngularSLerpPositionDriveEnabled boolean
---@field public bAngularSLerpVelocityDriveEnabled boolean
---@field public bAngularTwistPositionDriveEnabled boolean
---@field public bAngularTwistVelocityDriveEnabled boolean
---@field public bAngularSwingPositionDriveEnabled boolean
---@field public bAngularSwingVelocityDriveEnabled boolean
---@field public LinearMotionTypes EChaosVDJointMotionType
---@field public LinearLimit number
---@field public AngularMotionTypes EChaosVDJointMotionType
---@field public AngularLimits FVector
---@field public LinearSoftForceMode EChaosVDJointForceMode
---@field public AngularSoftForceMode EChaosVDJointForceMode
---@field public SoftLinearStiffness number
---@field public SoftLinearDamping number
---@field public SoftTwistStiffness number
---@field public SoftTwistDamping number
---@field public SoftSwingStiffness number
---@field public SoftSwingDamping number
---@field public LinearRestitution number
---@field public TwistRestitution number
---@field public SwingRestitution number
---@field public LinearContactDistance number
---@field public TwistContactDistance number
---@field public SwingContactDistance number
---@field public LinearDrivePositionTarget FVector
---@field public LinearDriveVelocityTarget FVector
---@field public bLinearPositionDriveEnabled0 boolean
---@field public bLinearPositionDriveEnabled1 boolean
---@field public bLinearPositionDriveEnabled2 boolean
---@field public bLinearVelocityDriveEnabled0 boolean
---@field public bLinearVelocityDriveEnabled1 boolean
---@field public bLinearVelocityDriveEnabled2 boolean
---@field public LinearDriveForceMode EChaosVDJointForceMode
---@field public LinearDriveStiffness FVector
---@field public LinearDriveDamping FVector
---@field public LinearDriveMaxForce FVector
---@field public AngularDrivePositionTarget FQuat
---@field public AngularDriveVelocityTarget FVector
---@field public AngularDriveForceMode EChaosVDJointForceMode
---@field public AngularDriveStiffness FVector
---@field public AngularDriveDamping FVector
---@field public AngularDriveMaxTorque FVector
---@field public LinearBreakForce number
---@field public LinearPlasticityLimit number
---@field public LinearPlasticityType EChaosVDPlasticityType
---@field public LinearPlasticityInitialDistanceSquared number
---@field public AngularBreakTorque number
---@field public AngularPlasticityLimit number
---@field public ContactTransferScale number
local FChaosVDJointSettingsDataWrapper = {}
