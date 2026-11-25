cask "shotleaf" do
  version "0.5.0"
  sha256 "e2b05b0f46e69861359bf8988a8ba9ce92e1c6690d142d793c9ecb2e94803e7d"

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
