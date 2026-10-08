cask "vibez-mac" do
  version "0.1.15"
  sha256 "d1658f760675846736636eb8362b74ece874ae021d191001b55d5bb63f416f1a"

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
