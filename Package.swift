// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "CoreDB",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "CoreDB",
            targets: ["CoreDB"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CoreDB",
            path: "./ios/CoreDB.xcframework"
        )
    ]
)
