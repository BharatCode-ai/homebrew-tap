cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.15,desktop-beta-2026-07-03-share-goal-001"
  sha256 arm: "fbcd9dfb30df4842767e849ab4fd7532b97ebb2cc3f261d521808093aee6b148",
         intel: "695a64cde758f465aca1a69c0efd80b89b733f73d5f1600c0d10d53c133b59fc"

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
