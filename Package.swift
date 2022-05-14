// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPiNFC",
    products: [
        .executable(name: "SwiftPiNFC", targets: ["SwiftPiNFC"]),
    ],
    dependencies: [
    ],
    targets: [
        .systemLibrary(
			name: "libnfc", 
			providers: [
                .apt(["libnfc-dev"]),
                .brew(["libnfc"])
            ]),
        .executableTarget(
            name: "SwiftPiNFC",
            dependencies: [
                "libnfc"
            ]),
        .testTarget(
            name: "SwiftPiNFCTests",
            dependencies: ["SwiftPiNFC"]),
    ]
)
