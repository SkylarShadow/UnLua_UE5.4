---* Based on a Position Based solver at core, this node can solve multi chains within a root using multi effectors
---@class FRigUnit_PBIK : FRigUnit_HighlevelBaseMutable
---@field public Root string @This is usually the top-most skinned bone; often the "Pelvis" or "Hips", but can be set to any bone. Bones above the root will be ignored by the solver. Bones that are located *between* the Root and the effectors will be included in the solve.
---@field public Effectors TArray<FPBIKEffector> @An array of effectors. These specify target transforms for different parts of the skeleton.
---@field public EffectorSolverIndices TArray<integer>
---@field public BoneSettings TArray<FPBIKBoneSetting> @Per-bone settings to control the resulting pose. Includes limits and preferred angles.
---@field public ExcludedBones TArray<string> @These bones will be excluded from the solver. They will not bend and will not contribute to the constraint set. Use the ExcludedBones array instead of setting Rotation Stiffness to very high values or Rotation Limits with zero range.
---@field public Settings FPBIKSolverSettings @Global solver settings.
---@field public Debug FPBIKDebug @Debug drawing options.
---@field public WorkData FPBIKWorkData @Runtime-only data
local FRigUnit_PBIK = {}