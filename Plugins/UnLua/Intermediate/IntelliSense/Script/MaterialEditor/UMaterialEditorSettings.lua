---@class UMaterialEditorSettings : UObject
---@field public MaliOfflineCompilerPath FFilePath @Path to user installed Mali shader compiler that can be used by the material editor to compile and extract shader informations for Android platforms. Official website address: https://developer.arm.com/products/software-development-tools/graphics-development-tools/mali-offline-compiler/downloads
---@field protected DefaultPreviewWidth integer @The width (in pixels) of the preview viewport when a material editor is first opened
---@field protected DefaultPreviewHeight integer @The height (in pixels) of the preview viewport when a material editor is first opened
---@field public PreviewBackground FPreviewBackgroundSettings @Configures the background shown behind the UI material preview
local UMaterialEditorSettings = {}

