# BungoKit
At this point, this repository just contains a bunch of model code generated by a custom OpenAPI Generator.

It's probably incomplete and might not even work properly. 
I just needed a space to keep a version of the models that actually builds successfully.

## BungoJSONDecoder
There's a `BungoJSONDecoder` in the `BungoModels` module.
It's pretty much a standard `JSONDecoder` except for its `dateDecodingStrategy`.

## Custom Decoding
### 64-Bit integer handling
The API returns 64-Bit integers as `String`. These are converted to `Int64` (or `UInt64`) by the custom decoders as well. We don't want to work with Strings as integers in Swift, do we?

## BungoCodeGen
The code generator is now in the BungoCodeGen executable target. 
I tried to split it up in... some way but I'm still not too happy. 
However it produces the results I need right now and that's good enough.
