cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.23,desktop-beta-1.15.23"
  sha256 arm: "94e1eccd71dd9d88cf107b15f92aff28f97b8d63aef9d6f08400c40209099674",
         intel: "98e0b94c004bbed59773ee71011c31f6c6b5d4f470ba5da34165f0316e78cc5b"

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
