cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.13,desktop-beta-2026-07-01-network-loop-guard-002"
  sha256 arm: "d408d3f4b593aab3e68014db04eacb86836fa6bff3bb1db35617a58b2309f572",
         intel: "20b6a0363c2a4ef30c794fa1eeae2a583b1a58f43c604948d8a995bc17168b4f"

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
