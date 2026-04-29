cask "vibez" do
  version "0.1.3"
  sha256 "08b9a4e9bcc820e225f3cd8c5160ab50d9966fdcd9c8806fa4ee4e3d5ae83c45"

  url "https://github.com/bike-shed-io/vibez-mac/releases/download/v#{version}/Vibez-macos-arm64.zip"
  name "Vibez"
  desc "Native menu bar app for Vibez radio"
  homepage "https://github.com/bike-shed-io/vibez-mac"

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
