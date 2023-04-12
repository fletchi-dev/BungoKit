import Foundation

let singleComponentResponseRegex = try! NSRegularExpression(pattern: "SingleComponentResponseOf(.+)")
let dictionaryComponentResponseRegex = try! NSRegularExpression(pattern: "DictionaryComponentResponseOf(?:u)?int(?:32|64){1}And(.+)")
