cask "shotleaf" do
  version "0.3.0"
  sha256 "2ec794e4c0d29c28a65458762d4d2fc8ce578caac43b1b50dd80ca826bcc2fda"

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
