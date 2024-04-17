// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "asr",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "asr",
            targets: ["asr"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dstbando/whisper.cpp", .upToNextMajor(from: "0.0.6")),
    ],
    targets: [
        .binaryTarget(
            name: "asr",
            url: "https://github.com/dstbando/asr/releases/download/0.0.4/asr.xcframework.zip",
            checksum: "bed871d71325e4f11d35dd1eeaf5c7d0953243d3399ccd45f853e14df23c4705"),
    ]
)