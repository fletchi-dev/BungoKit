import Foundation
import PathKit

private let projectPath = Path(#file).parent().parent().parent()
private let configuration = BungoCodeGenConfiguration(projectPath: projectPath)
private let codegen = BungoCodeGen(config: configuration)

try await codegen.start()
