cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.13,desktop-beta-homebrew-test-2026-06-23-001"
  sha256 arm: "aa2878e4dc4effa0574da116e1a162fa4afe2eff9be9a3e6d058da5884fd6a02",
         intel: "a1dd5b1418f5f3b458a7d691384453554ec7a4b7d6d964d53a34b19b07a0e684"

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
