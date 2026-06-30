cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.13,desktop-beta-2026-07-01-goal-mode-followups-001"
  sha256 arm: "7c0147d36416b19e55f49713bda015db30616a862d8fe0f7ef07e69119c135c2",
         intel: "fc2df43d026592e69868a95932f5ac24d4d4de1a89277e413508fb0a947c5f02"

  url "https://github.com/BharatCode-ai/bharatcode-desktop/releases/download/#{version.csv.second}/bharatcode-desktop-mac-#{arch}.zip",
      verified: "github.com/BharatCode-ai/bharatcode-desktop/"
  name "BharatCode Desktop"
  desc "BharatCode coding assistant desktop app"
  homepage "https://bharatcode.ai"

  app "BharatCode Beta.app", target: "BharatCode.app"

  caveats <<~EOS
    BharatCode Desktop for macOS is an unsigned beta until BharatCode has Apple Developer signing and notarization.
    On first launch, right-click BharatCode and choose Open, or use System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/BharatCode",
    "~/Library/Logs/BharatCode",
    "~/Library/Preferences/ai.bharatcode.desktop.plist",
    "~/Library/Saved Application State/ai.bharatcode.desktop.savedState",
  ]
end
