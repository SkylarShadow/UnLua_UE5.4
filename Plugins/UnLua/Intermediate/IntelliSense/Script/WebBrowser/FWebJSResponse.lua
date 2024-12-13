---Representation of a remote JS async response object.
---UFUNCTIONs taking a FWebJSResponse will get it passed in automatically when called from a web browser.
---Pass a result or error back by invoking Success or Failure on the object.
---UFunctions accepting a FWebJSResponse should have a void return type, as any value returned from the function will be ignored.
---Calling the response methods does not have to happen before returning from the function, which means you can use this to implement asynchronous functionality.
---Note that the remote object will become invalid as soon as a result has been delivered, so you can only call either Success or Failure once.
---@class FWebJSResponse : FWebJSCallbackBase
local FWebJSResponse = {}
