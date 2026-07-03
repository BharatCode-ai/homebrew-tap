cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.17,desktop-beta-2026-07-04-goal-mode-001"
  sha256 arm: "6f2cd884e75a36111fcb8d9898e0ef1fa6fd0d4d2e00406ba7f68523625f63f7",
         intel: "baa407d2bfa81f6293d411e2e945dfe791461a095d9b21c726dc1d40e5493386"

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
