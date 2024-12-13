---Project Settings for Unity Version Control (formerly Plastic SCM). Saved in Config/DefaultEditor.ini
---@class UPlasticSourceControlProjectSettings : UDeveloperSettings
---@field public UserNameToDisplayName TMap<string, string> @Map Unity Version Control user names (typically e-mail addresses or company domain names) to display names for brevity.
---@field public bHideEmailDomainInUsername boolean @Hide the domain part of an username e-mail address (eg @@gmail.com) if the UserNameToDisplayName map didn't match (enabled by default).
---@field public bPromptForCheckoutOnChange boolean @If enabled, you'll be prompted to check out changed files (enabled by default). Checkout is needed to work with Changelists.
---@field public LimitNumberOfRevisionsInHistory integer @If a non-null value is set, limit the maximum number of revisions requested to Unity Version Control to display in the "History" window.
---@field public bShowBranchRepositoryColumn boolean @Show the repository when the branch is created (hidden by default)
---@field public bShowBranchCreatedByColumn boolean @Show the name of the creator of the branch
---@field public bShowBranchDateColumn boolean @Show the date of creation of the branch
---@field public bShowBranchCommentColumn boolean @Show the comment of the branch
local UPlasticSourceControlProjectSettings = {}

