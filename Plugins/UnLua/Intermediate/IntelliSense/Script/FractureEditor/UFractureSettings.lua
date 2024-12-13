---Settings specifically related to viewing fractured meshes *
---@class UFractureSettings : UObject
---@field public ExplodeAmount number @Amount to expand the displayed Geometry Collection bones into an 'exploded view'
---@field public FractureLevel integer @Current level of the Geometry Collection displayed
---@field public bHideUnselected boolean @When active, only show selected bones
---@field public RestCollection TWeakObjectPtr<UGeometryCollection>
local UFractureSettings = {}

