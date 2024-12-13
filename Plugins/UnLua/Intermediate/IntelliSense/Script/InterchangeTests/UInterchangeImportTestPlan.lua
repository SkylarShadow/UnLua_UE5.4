---Define a test plan
---@class UInterchangeImportTestPlan : UObject
---@field public Steps TArray<UInterchangeImportTestStepBase> @Set of steps to perform to carry out this test plan
---@field public bIsEnabledInAutomationTests boolean @Whether or not this test plan is currently enabled
---@field public DisabledTestReason string @Why is the test plan disabled.
local UInterchangeImportTestPlan = {}

---Click here to immediately run this single test through the automation framework
function UInterchangeImportTestPlan:RunThisTest() end

