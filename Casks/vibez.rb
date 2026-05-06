cask "vibez" do
  version "0.1.4"
  sha256 "44eda2299d4bc76d46ef2b5865a79d144d14c7225682f1eec680f68a31e2765b"

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
