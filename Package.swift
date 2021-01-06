// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShapeKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ShapeKit",
            targets: ["ShapeKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // .package(url: "https://github.com/xho95/CoreShape.git", from: "0.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ShapeKit",
            dependencies: ["CoreShape"]),
        .binaryTarget(
            name: "CoreShape",
            url: "https://github.com/xho95/CoreShape/releases/download/0.0.1/CoreShape-0.0.1.xcframework.zip",
            checksum: "47e86e3bd5edec935b5bb634ef4ff22f7dcb27259b05f6a88bf5aab6ceadc6c7"),
        .testTarget(
            name: "ShapeKitTests",
            dependencies: ["ShapeKit"]),
    ]
)
