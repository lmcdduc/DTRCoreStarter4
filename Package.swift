// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DTRCoreStarter",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(name: "DTRCore", targets: ["DTRCore"]),
        .executable(name: "DTRCoreDemo", targets: ["DTRCoreDemo"])
    ],
    targets: [
        .target(name: "DTRCore"),
        .executableTarget(name: "DTRCoreDemo", dependencies: ["DTRCore"]),
        .testTarget(name: "DTRCoreDemoTests", dependencies: ["DTRCore"])
    ]
)
