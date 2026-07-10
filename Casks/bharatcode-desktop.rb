cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.21,desktop-beta-2026-07-10-account-auth-001"
  sha256 arm: "e3bca7e6c2214259d1b893ba30bc63914216178a168bd78079e95acf3cd9fb2a",
         intel: "c403ace54cdebb56c17d6b56d7e0246552fbd4278906e2a629b8d8538101c2d2"

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
