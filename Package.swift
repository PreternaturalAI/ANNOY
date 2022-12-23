// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnnoySwift",
    products: [
        .library(
            name: "AnnoySwift",
            targets: ["AnnoySwift"]
        ),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "CAnnoy",
            path: "src",
            exclude: [
                "annoygomodule.h",
                "annoygomodule.i",
                "annoyluamodule.cc",
                "annoymodule.cc",
            ],
            cxxSettings: [
                .define("ANNOYLIB_MULTITHREADED_BUILD"),
                .headerSearchPath("src/include"),
            ]
        ),
        .target(
            name: "AnnoySwift",
            dependencies: ["CAnnoy"]
        ),
    ],
    cxxLanguageStandard: .cxx20
)
