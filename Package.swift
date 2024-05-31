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
            url: "https://github.com/liamnichols/xcstrings-tool/releases/download/0.4.2/xcstrings-tool.artifactbundle.zip",
            checksum: "300943fea84c92a918340a9764b9c72ca696d350d477fc7b04a14bc23d5cfd06"
        )
    ]
)
