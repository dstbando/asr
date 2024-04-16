// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "mispeech",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "mispeech",
            targets: ["mispeech"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dstbando/whisper.cpp", .upToNextMajor(from: "0.0.6")),
    ],
    targets: [
        .binaryTarget(
            name: "mispeech",
            url: "https://github.com/dstbando/mispeech/releases/download/0.0.2/mispeech.xcframework.zip",
            checksum: "b1a58ecac9f45faa13a58ea0087ef792c80b2a838772340112452af1c5e915ab"),
    ]
)