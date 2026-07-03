cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.18,desktop-beta-2026-07-04-goal-pause-001"
  sha256 arm: "5d74381cfc1748fb0c4aacea9f50737bf8765736bee05ac22d615981b5fc9ccc",
         intel: "c803a6a29fe0008d58b9de80c9198443fa22b7ff15053cdd28b77e35d0465b87"

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
