import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/fengluo/CHiredis", majorVersion: 0, minor: 2)    ]
)
