---@class FLocalizationCompilationSettings
---@field public SkipSourceCheck boolean @Should we skip the source check when compiling translations? This will allow translations whose source no longer matches the active source to still be used by the game at runtime.
---@field public ValidateFormatPatterns boolean @Should we validate that format patterns are valid for the culture being compiled (eg, detect invalid plural rules or broken syntax).
---@field public ValidateSafeWhitespace boolean @Should we validate that text doesn't contain any unsafe whitespace (leading or trailing whitespace) that could get lost during the translation process.
local FLocalizationCompilationSettings = {}
