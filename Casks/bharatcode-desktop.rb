cask "bharatcode-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.15.13,desktop-beta-2026-06-30-3"
  sha256 arm: "a4d3594aa46c8cc492e3c4dd6a17f111e8094344aa7f77f2905109dc625481d1",
         intel: "373905483ec579ce9c3bd32a9ccfbad536024c0a333b8732b8bf766488217242"

  url "https://github.com/BharatCode-ai/bharatcode-desktop/releases/download/#{version.csv.second}/bharatcode-desktop-mac-#{arch}.zip",
      verified: "github.com/BharatCode-ai/bharatcode-desktop/"
  name "BharatCode Desktop"
  desc "BharatCode coding assistant desktop app"
  homepage "https://bharatcode.ai"

  app "BharatCode Beta.app", target: "BharatCode.app"

  caveats <<~EOS
    BharatCode Desktop for macOS is an unsigned beta until BharatCode has Apple Developer signing and notarization.
    On first launch, right-click BharatCode and choose Open, or use System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/BharatCode",
    "~/Library/Logs/BharatCode",
    "~/Library/Preferences/ai.bharatcode.desktop.plist",
    "~/Library/Saved Application State/ai.bharatcode.desktop.savedState",
  ]
end
