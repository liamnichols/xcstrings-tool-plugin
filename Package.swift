// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "XCStringsToolPlugin",
    products: [
        .plugin(name: "XCStringsToolPlugin", targets: ["XCStringsToolPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/liamnichols/xcstrings-tool", branch: "main")
    ],
    targets: [
        .plugin(
            name: "XCStringsToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .product(name: "xcstrings-tool", package: "xcstrings-tool")
            ]
        ),
    ]
)
