import PackageDescription

let package = Package(
    name: "redistest",
    dependencies: [
        .Package(url: "../CHiredis", majorVersion: 0, minor: 1)    ]
)
