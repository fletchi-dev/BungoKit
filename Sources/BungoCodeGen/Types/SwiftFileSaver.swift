import Foundation
import PathKit
import SwiftFormat

final class SwiftFileSaver {
    static let shared = SwiftFileSaver()

    var savedFilenames = Set<String>()

    private init() {}

    func saveSwiftFile(contents: String, to path: PathKit.Path) throws {
        var options = FormatOptions.default
        options.truncateBlankLines = true
        options.removeStartOrEndBlankLinesFromTypes = true
        options.removeBlankLines = true

        var targetPath = path

        if savedFilenames.contains(path.lastComponent) {
            let newFilename: String

            if let ext = path.extension {
                newFilename = "\(path.lastComponentWithoutExtension)_.\(ext)"
            } else {
                newFilename = "\(path.lastComponentWithoutExtension)_"
            }

            var newPath = path.absolute().string.split(separator: "/").dropLast().map(String.init)
            newPath.append(newFilename)
            newPath[0] = "/\(newPath[0])"

            targetPath = Path(components: newPath)
        }

        let formatted = try format(contents)
        try targetPath.write(formatted)

        savedFilenames.insert(path.lastComponent)
    }
}
