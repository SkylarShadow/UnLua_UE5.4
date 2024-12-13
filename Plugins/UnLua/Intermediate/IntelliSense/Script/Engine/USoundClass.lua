---@class USoundClass : UObject
---@field public Properties FSoundClassProperties @Configurable properties like volume and priority.
---@field public ChildClasses TArray<USoundClass>
---@field public PassiveSoundMixModifiers TArray<FPassiveSoundMixModifier> @SoundMix Modifiers to activate automatically when a sound of this class is playing.
---@field public ParentClass USoundClass
local USoundClass = {}

