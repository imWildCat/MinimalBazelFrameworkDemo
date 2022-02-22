load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load(
    "@build_bazel_rules_swift//swift:swift.bzl",
    "swift_library",
)
load("//build-system/ios-utils:plist_fragment.bzl", "plist_fragment")

swift_library(
    name = "MinimalBazelFrameworkDemoAppLib",
    srcs = glob(["**/*.swift"]),
    data = [
        "Base.lproj/Main.storyboard",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//DemoSwiftFramework:DemoSwiftFrameworkSource",
    ],
)

plist_fragment(
    name = "MinimalBazelFrameworkDemoAppPlist",
    extension = "plist",
    template =
        """
    <key>CFBundleDevelopmentRegion</key>
    <string>en</string>
    <key>CFBundleExecutable</key>
    <string>MinimalBazelFrameworkDemoApp</string>
    <key>CFBundleIdentifier</key>
    <string>com.demo.MinimalBazelFrameworkDemoApp</string>
    <key>CFBundleInfoDictionaryVersion</key>
    <string>6.0</string>
    <key>CFBundleName</key>
    <string>MinimalBazelFrameworkDemoApp</string>
    <key>CFBundleShortVersionString</key>
    <string>1.0.0</string>
    <key>CFBundleVersion</key>
    <string>1.0</string>
    <key>CFBundlePackageType</key>
    <string>APPL</string>
    <key>LSRequiresIPhoneOS</key>
    <true/>
    <key>UIApplicationSceneManifest</key>
    <dict>
      <key>UIApplicationSupportsMultipleScenes</key>
      <false/>
      <key>UISceneConfigurations</key>
      <dict>
        <key>UIWindowSceneSessionRoleApplication</key>
        <array>
          <dict>
            <key>UISceneConfigurationName</key>
            <string>Default Configuration</string>
            <key>UISceneDelegateClassName</key>
            <string>MinimalBazelFrameworkDemo_MinimalBazelFrameworkDemoAppLib.SceneDelegate</string>
          </dict>
        </array>
      </dict>
    </dict>
    <key>UILaunchStoryboardName</key>
    <string>LaunchScreen</string>
    <key>UIRequiredDeviceCapabilities</key>
    <array>
      <string>arm64</string>
    </array>
    <key>UIStatusBarTintParameters</key>
    <dict>
      <key>UINavigationBar</key>
      <dict>
        <key>Style</key>
        <string>UIBarStyleDefault</string>
        <key>Translucent</key>
        <false/>
      </dict>
    </dict>
    <key>UISupportedInterfaceOrientations</key>
    <array>
      <string>UIInterfaceOrientationPortrait</string>
      <string>UIInterfaceOrientationLandscapeLeft</string>
      <string>UIInterfaceOrientationLandscapeRight</string>
    </array>
    <key>UISupportedInterfaceOrientations~ipad</key>
    <array>
      <string>UIInterfaceOrientationPortrait</string>
      <string>UIInterfaceOrientationPortraitUpsideDown</string>
      <string>UIInterfaceOrientationLandscapeLeft</string>
      <string>UIInterfaceOrientationLandscapeRight</string>
    </array>
    """,
)

ios_application(
    name = "MinimalBazelFrameworkDemoApp",
    bundle_id = "com.demo.MinimalBazelFrameworkDemoApp",
    families = [
        "iphone",
        "ipad",
    ],
    frameworks = [
        "//DemoSwiftFramework",
    ],
    infoplists = [":MinimalBazelFrameworkDemoAppPlist"],
    launch_storyboard = "Base.lproj/LaunchScreen.storyboard",
    minimum_os_version = "14.0",
    deps = [
        ":MinimalBazelFrameworkDemoAppLib",
    ],
)
