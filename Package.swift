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
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ShapeKit",
            dependencies: [
                .target(name: "CoreShape", condition: .when(platforms: [.iOS])),
            ]),
        .binaryTarget(
            name: "CoreShape",
            url: "https://github.com/xho95/CoreShape.zip",
            checksum: "checksum"),

        // While building for macOS, no library for this platform was found in '/Users/kimminho/Library/Developer/Xcode/DerivedData/ShapeKit-ghwawczntlfoajbscwcyubvzltdb/SourcePackages/checkouts/CoreShape/CoreShape.xcframework'.

        .testTarget(
            name: "ShapeKitTests",
            dependencies: ["ShapeKit"]),
    ]
)
