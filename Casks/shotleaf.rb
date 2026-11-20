cask "shotleaf" do
  version "0.4.0"
  sha256 "5574088381c482310910c6e6243304992a3f574b86459f4dffa4fcb1a356ae96"

  url "https://github.com/Syvyj/shotleaf/releases/download/v#{version}/Shotleaf.dmg"
  name "Shotleaf"
  desc "Screenshots, text from the screen, clipboard history and snippets"
  homepage "https://shotleaf.syvyj.dev/"

  # The app updates itself from its menu.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Shotleaf.app"

  zap trash: [
    "~/Library/Application Support/Shotleaf",
    "~/Library/Preferences/dev.syvyj.shotleaf.plist",
  ]

  caveats <<~EOS
    Shotleaf isn't notarised by Apple. On the first launch macOS refuses to open it:
    open System Settings → Privacy & Security and click "Open Anyway".
  EOS
end
