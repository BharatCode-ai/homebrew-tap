cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.26,desktop-beta-1.15.26"
  sha256 arm: "63b6f80522a50463bec9f5e4399a4ea9caa37c12f68fe1d63f03215b3756a72e",
         intel: "757d018e5f1b1937e6fead9a610bbdb58ced61b357d7d4edd956e27128216c23"

  url "https://github.com/BharatCode-ai/bharatcode-desktop/releases/download/#{version.csv.second}/bharatcode-desktop-next-beta-mac-#{arch}.zip",
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
