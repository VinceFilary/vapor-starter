// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "vapor-starter",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0-rc.4"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0-rc")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentPostgreSQL", "Leaf", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

