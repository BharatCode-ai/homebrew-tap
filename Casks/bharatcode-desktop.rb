cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.13,desktop-beta-2026-07-01-goal-mode-001"
  sha256 arm: "4db67426222657157b70b945a5d49ec8769fe36e22e13e03f26d18a37e5278e0",
         intel: "d3db5f05ad86304be66b3fad66f8ef1ffa09ecdaa7447dc88157bae6307247af"

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
