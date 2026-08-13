cask "kolmafia" do
  version "29161"
  sha256 "41d6808940f5f4693f088b397cdde6e847a247fe293dd1f97e0610ceb25fc164"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29161/KoLmafia-26.08.29161.dmg",
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
