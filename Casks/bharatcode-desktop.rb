cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.16,desktop-beta-2026-07-03-linux-updater-001"
  sha256 arm: "c514f8d017ade978e21bbfc001b44939786ae269017c9ef2153dfc01f505ddb1",
         intel: "00c6f28f8e79bf15e99eb7c5936d732eed463f7f5ad65101985db23f4002cc83"

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
