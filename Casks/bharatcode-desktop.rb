cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.25,desktop-beta-1.15.25"
  sha256 arm: "e4e44fa1c03be2a36f1ff1a3f19cc53ff5741b81a31a1e2a95a4f8aed90c5fe4",
         intel: "3dd7c12679fafa1243a6a1920df958fcfea196a3ba334546d7982140cd227073"

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
