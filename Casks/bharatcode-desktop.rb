cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.20,desktop-beta-2026-07-06-goal-policy-001"
  sha256 arm: "4aa376d61ef5ad0ca269ba3f335afba50942df3e9b942eb06bf72e309ce490ee",
         intel: "eb4135e76cd23bb682756413a07b29fde68f7e5339a33517bfc7ad2af56c52d5"

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
