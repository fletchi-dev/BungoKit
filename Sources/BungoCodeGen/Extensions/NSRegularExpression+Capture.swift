import Foundation

extension NSRegularExpression {
    func extractCaptureGroupAt(index: Int, from string: String) -> String? {
        let nsRange = NSRange(
            string.startIndex ..< string.endIndex,
            in: string
        )

        guard
            let firstMatch = matches(in: string, range: nsRange).first,
            index < firstMatch.numberOfRanges
        else {
            return nil
        }

        let range = firstMatch.range(at: index)

        guard let substringRange = Range(range, in: string) else {
            return nil
        }

        return String(string[substringRange])
    }
}
