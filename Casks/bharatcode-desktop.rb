cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.19,desktop-beta-2026-07-04-goal-compaction-001"
  sha256 arm: "8e1a2b1f4b7d20590dec5f50ac54d16837ae0c9b11a64685ff0f86c6a1e9afec",
         intel: "37eef35d891f81a3c387cba96c67816adedb4775ae964b6c73f2430d07e2266b"

  url "https://github.com/BharatCode-ai/bharatcode-desktop/releases/download/#{version.csv.second}/bharatcode-desktop-mac-#{arch}.zip",
      verified: "github.com/BharatCode-ai/bharatcode-desktop/"
  name "BharatCode Desktop"
  desc "BharatCode coding assistant desktop app"
  homepage "https://bharatcode.ai"

  app "BharatCode Beta.app", target: "BharatCode.app"


  zap trash: [
    "~/Library/Application Support/BharatCode",
    "~/Library/Logs/BharatCode",
    "~/Library/Preferences/ai.bharatcode.desktop.plist",
    "~/Library/Saved Application State/ai.bharatcode.desktop.savedState",
  ]
end
