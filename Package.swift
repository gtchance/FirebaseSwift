// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "FirebaseSwift",
    products: [
        .library(name: "FirebaseSwift", targets: ["FirebaseSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tylermilner/Just.git", .upToNextMajor(from: "0.6.1"))
    ],
    targets: [
        .target(name: "FirebaseSwift", dependencies: ["Just"]),
        .testTarget(name: "FirebaseSwiftTests", dependencies: ["FirebaseSwift"])
    ]
)
