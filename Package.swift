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
            checksum: "b1a58ecac9f45faa13a58ea0087ef792c80b2a838772340112452af1c5e915ab"),
    ]
)