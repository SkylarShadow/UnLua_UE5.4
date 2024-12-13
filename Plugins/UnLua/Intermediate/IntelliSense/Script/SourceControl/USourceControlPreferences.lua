---Settings for the Source Control Integration
---@class USourceControlPreferences : UDeveloperSettings
---@field public bEnableValidationTag boolean @Adds validation tag to changelist description on submit.
---@field public bShouldDeleteNewFilesOnRevert boolean @Deletes new files when reverted.
---@field public bEnableUncontrolledChangelists boolean @Enables Uncontrolled Changelists features. The editor must be restarted for the change to be fully taken into account.
---@field public CollectionChangelistTags TArray<string> @List of lines to add to any collection on checkin
---@field public SpecificCollectionChangelistTags TMap<string, string> @Map of collection names and additional text to apply to changelist descriptions when checking them in
local USourceControlPreferences = {}

