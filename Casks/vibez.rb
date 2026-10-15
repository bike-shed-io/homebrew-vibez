cask "vibez" do
  version "0.1.17"
  sha256 "30307c5cb2cd8c9aa17ff45ec772d13c74daac994cd7ba96b8812aa04b405488"

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
