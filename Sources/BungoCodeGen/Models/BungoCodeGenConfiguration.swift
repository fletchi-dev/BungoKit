import Foundation
import PathKit

struct BungoCodeGenConfiguration {
    var projectPath: Path
    var templatesPath: Path
    var sourcesPath: Path
    var openapiFilePath: Path
    var outputPath: Path
    var modelsOutputPath: Path

    init(projectPath: Path) {
        self.projectPath = projectPath

        templatesPath = projectPath + Path("Resources/Templates")
        sourcesPath = projectPath + Path("Resources/Sources")
        openapiFilePath = projectPath + Path("bungie-api/openapi.json")
        outputPath = projectPath + Path("Sources/BungoModels")
        modelsOutputPath = outputPath + Path("Models")
    }
}
