// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SpotifyANNOY",
    products: [
        .library(
            name: "SpotifyANNOY",
            targets: ["SpotifyANNOY"]
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
            name: "SpotifyANNOY",
            dependencies: ["CAnnoy"],
            path: "Sources"
        ),
    ],
    cxxLanguageStandard: .cxx20
)
