// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "bad_query",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "bad_query",
            targets: ["bad_query"]
        )
    ],
    targets: [
        .target(
            name: "bad_query",
            path: "Sources",
            sources: [
                "bad_query.c"
            ],
            publicHeadersPath: "Includes",
            linkerSettings: [
                .linkedLibrary("xpc")
            ]
        )
    ]
)
