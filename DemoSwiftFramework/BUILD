load("@build_bazel_rules_apple//apple:ios.bzl", "ios_framework")
load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)
load("//build-system/ios-utils:plist_fragment.bzl", "plist_fragment")

swift_library(
    name = "DemoSwiftFrameworkSource",
    srcs = glob([
        "*.swift",
    ]),
    module_name = "DemoSwiftFramework",
    visibility = ["//visibility:public"],
    deps = [],
)

plist_fragment(
    name = "DemoSwiftFrameworkPlist",
    extension = "plist",
    template =
        """
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    <key>CFBundleExecutable</key>
    <string>DemoSwiftFramework</string>
    <key>CFBundleIdentifier</key>
    <string>com.example.DemoSwiftFramework</string>
    <key>CFBundleInfoDictionaryVersion</key>
    <string>6.0</string>
    <key>CFBundleName</key>
    <string>DemoSwiftFramework</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0.0</string>
    <key>CFBundleVersion</key>
    <string>1.0</string>
    <key>CFBundlePackageType</key>
    <string>FRWK</string>
        """,
)

ios_framework(
    name = "DemoSwiftFramework",
    bundle_id = "com.example.DemoSwiftFramework",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":DemoSwiftFrameworkPlist"],
    minimum_os_version = "14.0",
    visibility = ["//visibility:public"],
    deps = [":DemoSwiftFrameworkSource"],
)
