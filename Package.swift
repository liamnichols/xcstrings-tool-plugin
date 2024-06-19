// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "XCStringsToolPlugin",
    products: [
        .plugin(name: "XCStringsToolPlugin", targets: ["XCStringsToolPlugin"])
    ],
    targets: [
        .plugin(
            name: "XCStringsToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "xcstrings-tool")
            ]
        ),
        .binaryTarget(
            name: "xcstrings-tool",
            url: "https://github.com/liamnichols/xcstrings-tool/releases/download/0.5.1/xcstrings-tool.artifactbundle.zip",
            checksum: "4394f0c8759fd4ed3b7762fe46db12ec0b68f7a4803d8d6003f0faf6526a2e3e"
        )
    ]
)
