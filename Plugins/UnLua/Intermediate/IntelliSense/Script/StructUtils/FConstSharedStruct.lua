---FConstSharedStruct is the same as the FSharedStruct but restricts the API to return const struct type.
---A 'const FConstSharedStruct' can not be made to point at another instance of a struct, whilst a vanila FConstSharedStruct can. In either case the struct data is
---immutable.
---See FSharedStruct for more information.
---@class FConstSharedStruct
local FConstSharedStruct = {}
