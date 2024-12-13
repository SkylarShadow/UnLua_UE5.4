---The runtime processor that converts an input pose from a source skeleton into an output pose on a target skeleton.
---To use:
---1. Initialize a processor with a Source/Target skeletal mesh and a UIKRetargeter asset.
---2. Call RunRetargeter and pass in a source pose as an array of global-space transforms
---3. RunRetargeter returns an array of global space transforms for the target skeleton.
---@class UIKRetargetProcessor : UObject
---@field private IKRigProcessor UIKRigProcessor @The IK Rig processor for running IK on the target // must be property to keep from being GC'd
---@field private OpStack TArray<URetargetOpBase> @The collection of operations to run in the final phase of retargeting // must be property to keep from being GC'd
local UIKRetargetProcessor = {}

