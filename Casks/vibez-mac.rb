cask "vibez-mac" do
  version "0.1.1"
  sha256 "289265517f1a01501641d27aa960a4920cea73adb091b1fec69530d8a55f1d20"

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
