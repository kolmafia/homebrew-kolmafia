cask "kolmafia" do
  version "29204"
  sha256 "3a6f102ea5165ed2faf84f249029c1977350a7b56e748cbc6e5f5d147ccee9d5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29204/KoLmafia-26.08.29204.dmg",
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
