---@class URootMotionAnalysisProperties : UAnalysisProperties
---@field public FunctionAxis EAnalysisRootMotionAxis @Axis for the analysis function
---@field public BoneSocket FBoneSocketTarget @The bone or socket used for analysis
---@field public Space EAnalysisSpace @The space in which to perform the analysis. Fixed will use the analysis bone/socket at the first frame of the analysis time range. Changing will use the analysis bone/socket at the relevant frame during the analysis, but calculate velocities assuming that frame isn't moving. Moving will do the same but velocities as well as positions/rotations will be relative to this moving frame.
---@field public SpaceBoneSocket FBoneSocketTarget @Bone or socket that defines the analysis space (when it isn't World)
---@field public CharacterFacingAxis EAnalysisLinearAxis @World or bone/socket axis that specifies the character's facing direction
---@field public CharacterUpAxis EAnalysisLinearAxis @World or bone/socket axis that specifies the character's up direction
---@field public StartTimeFraction number @Fraction through each animation at which analysis starts
---@field public EndTimeFraction number @Fraction through each animation at which analysis ends
local URootMotionAnalysisProperties = {}

