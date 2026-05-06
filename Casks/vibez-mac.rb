cask "vibez-mac" do
  version "0.1.5"
  sha256 "9d837ba938655aa82480e7f55e43bb6f984033f03f764ee773358c5f78eb4abb"

  url "https://github.com/bike-shed-io/homebrew-vibez/releases/download/v#{version}/Vibez-macos-arm64.zip"
  name "Vibez"
  desc "Native menu bar app for Vibez radio"
  homepage "https://github.com/bike-shed-io/homebrew-vibez"

  app "Vibez.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Vibez.app"]
  end

  zap trash: [
    "~/Library/Preferences/io.bike-shed.vibez.mac.plist",
    "~/Library/HTTPStorages/io.bike-shed.vibez.mac",
    "~/Library/WebKit/io.bike-shed.vibez.mac"
  ]
end
