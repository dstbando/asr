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
            url: "https://github.com/dstbando/asr/releases/download/0.0.2/asr.xcframework.zip",
            checksum: "5d9fade5148cc789292d22056c2b74976345d72bbede75751e77ad270014c82b"),
    ]
)