// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HejDTO",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v16),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HejDTO",
            type: .dynamic,
            targets: ["HejDTO"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/pointfreeco/swift-custom-dump.git", from: "0.10.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HejDTO",
            dependencies: []),
        .testTarget(
            name: "HejDTOTests",
            dependencies: [
                "HejDTO",
                .product(name: "CustomDump", package: "swift-custom-dump"),
            ]
        ),
    ]
)
