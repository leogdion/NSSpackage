// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NSSpackage",
    platforms: [.iOS(.v14), .macOS(.v11), .watchOS(.v7), .tvOS(.v14)],
    products: [
        .library(
            name: "NSSpackage",
            targets: ["NSSpackage"]),
    ],
    dependencies: [
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/shibapm/Komondor.git", from: "1.0.6"), // dev
        .package(url: "https://github.com/shibapm/Rocket", from: "1.1.0"), // dev
    ],
    targets: [
        .target(
            name: "NSSpackage",
            dependencies: []),
        .testTarget(
            name: "NSSpackageTests",
            dependencies: ["NSSpackage"]),
    ]
)

#if canImport(PackageConfig)
    import PackageConfig

    let config = PackageConfiguration([
        "komondor": [
            "pre-push": "swift test",
            "pre-commit": [
                "swift test"
            ],
        ],
    ]).write()
#endif