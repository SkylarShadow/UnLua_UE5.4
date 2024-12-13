---Struct used to update a blueprint property with a gameplay tag count.
---The property is automatically updated as the gameplay tag count changes.
---It only supports boolean, integer, and float properties.
---@class FGameplayTagBlueprintPropertyMapping
---@field public TagToMap FGameplayTag @Gameplay tag being counted.
---@field public PropertyToEdit Unknown @Property to update with the gameplay tag count.
---@field public PropertyName string @Name of property being edited.
---@field public PropertyGuid FGuid @Guid of property being edited.
local FGameplayTagBlueprintPropertyMapping = {}
