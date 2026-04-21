cask "vibez-mac" do
  version "0.1.0"
  sha256 "3f5a648927f8151e0f798cc4cc81440e484f4f891ba6a6b0806042e109ff4c28"

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
