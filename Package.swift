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
            checksum: "5d9fade5148cc789292d22056c2b74976345d72bbede75751e77ad270014c82b"),
    ]
)