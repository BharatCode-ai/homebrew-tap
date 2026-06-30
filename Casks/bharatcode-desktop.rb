cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.13,desktop-beta-2026-07-01-goal-mode-002"
  sha256 arm: "b789abe081ec679d78b61ee9caf9a2a4fdaaffb2525a21e375eee0f9aabe334e",
         intel: "4b42313a9bf210a99781c47e05cb8b7c910b94d2aa0de13d7f7cb19d35064dd7"

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
