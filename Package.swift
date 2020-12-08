// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "MarketingCloudSDK",
                      platforms: [.macOS(.v10_12),
                                  .iOS(.v10),
                                  .tvOS(.v10),
                                  .watchOS(.v3)],
                      products: [.library(name: "MarketingCloudSDK",
                                          targets: ["MarketingCloudSDK"])],
                      targets: [.target(name: "MarketingCloudSDK",
                                        path: "Source",
                                        linkerSettings: [.linkedFramework("CFNetwork",
                                                                          .when(platforms: [.iOS,
                                                                                            .macOS,
                                                                                            .tvOS,
                                                                                            .watchOS]))]),
                                .testTarget(name: "MarketingCloudSDKTests",
                                            dependencies: ["MarketingCloudSDK"],
                                            path: "Tests")],
                      swiftLanguageVersions: [.v5])
