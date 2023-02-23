// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ANNOY",
    products: [
        .library(
            name: "ANNOY",
            targets: ["ANNOY"]
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
            name: "ANNOY",
            dependencies: ["CAnnoy"],
            path: "Sources"
        ),
    ],
    cxxLanguageStandard: .cxx20
)
