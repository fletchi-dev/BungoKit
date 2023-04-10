// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "BungoKit",
    platforms: [
        .macOS("10.15"),
        .iOS("13"),
    ],
    products: [
        .library(
            name: "BungoClient",
            targets: ["BungoClient"]
        ),
        .library(
            name: "BungoAuth",
            targets: ["BungoAuth"]
        ),
        .library(
            name: "BungoManifest",
            targets: ["BungoManifest"]
        ),
        .library(
            name: "BungoModels",
            targets: ["BungoModels"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.7"),
        .package(url: "https://github.com/stephencelis/SQLite.swift", from: "0.14.1"),
        .package(url: "https://github.com/weichsel/ZIPFoundation", from: "0.9.16"),
    ],
    targets: [
        .target(
            name: "BungoClient",
            dependencies: ["BungoModels"]
        ),
        .testTarget(
            name: "BungoClientTests",
            dependencies: ["BungoClient"]
        ),
        .target(
            name: "BungoAuth"),
        .target(
            name: "BungoManifest",
            dependencies: [
                "BungoModels",
                "AnyCodable",
                "ZIPFoundation",
                .product(name: "SQLite", package: "SQLite.swift"),
            ]
        ),
        .target(
            name: "BungoModels",
            dependencies: ["AnyCodable"]
        ),
    ]
)
