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
            url: "https://github.com/liamnichols/xcstrings-tool/releases/download/0.1.2/xcstrings-tool.artifactbundle.zip",
            checksum: "1731cfcfb5d8f2a5d704877667dcab798283b1f5a476ccad0315dccaf27f9bb5"
        )
    ]
)
