cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.14,desktop-beta-2026-07-02-goal-share-fix-001"
  sha256 arm: "069290539df52af8093476b85f1f20b28232b7784c25c7c13ad077d8a4bce0a9",
         intel: "be1af9ef717716b47002b536501969119c63e7bd2c9f9a2a4106f13ee2099ba7"

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
