cask "vibez-mac" do
  version "0.1.20"
  sha256 "5a4dd634f85983d34b659d31752b83ba313028b6851084fe23f2dd45eb0fedf9"

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
