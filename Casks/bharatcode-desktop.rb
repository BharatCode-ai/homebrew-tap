cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.22,desktop-beta-1.15.22"
  sha256 arm: "b138503f7e0a5e1a5bc6201935c469f1f442b886645c917ba9742a0ea0d58b28",
         intel: "ae51ad87a90e08809508eb3c83992b19cd6eea0bf2d187de11f4a1946ac09b2e"

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
