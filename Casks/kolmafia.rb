cask "kolmafia" do
  version "29409"
  sha256 "0b2de974b92d3b7aaaac3dc2d2ca75a431e9de0c66b2bdafa4a8b975f3d0c8c5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29409/KoLmafia-26.11.29409.dmg",
      verified: "github.com/kolmafia/kolmafia"
  name "KoLmafia"
  desc "Cross-platform application to interface with online RPG Kingdom of Loathing 🍸"
  homepage "https://kolmafia.us/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KoLmafia.app"

  zap trash: "~/Library/Application Support/KoLmafia"

  caveats do
    depends_on_java "17+"
  end
end
