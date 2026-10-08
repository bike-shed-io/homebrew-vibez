cask "vibez" do
  version "0.1.14"
  sha256 "ede37db971fabebed3e763ea1367940f14693c3b7b4000ecd816f6f036e1a19e"

  url "https://github.com/bike-shed-io/homebrew-vibez/releases/download/v#{version}/Vibez-macos-arm64.zip"
  name "Vibez"
  desc "Native menu bar app for Vibez radio"
  homepage "https://github.com/bike-shed-io/homebrew-vibez"

  depends_on :macos

  app "Vibez.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "."], chdir: "{{appdir}}/Vibez.app"
  end

  zap trash: [
    "~/Library/HTTPStorages/io.bike-shed.vibez.mac",
    "~/Library/Preferences/io.bike-shed.vibez.mac.plist",
    "~/Library/WebKit/io.bike-shed.vibez.mac",
  ]
end
