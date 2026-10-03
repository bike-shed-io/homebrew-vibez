cask "vibez" do
  version "0.1.12"
  sha256 "0586a057becb7d84f309dff03e28234e3340b56924887fcd2e58a8bd2a7e24ca"

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
