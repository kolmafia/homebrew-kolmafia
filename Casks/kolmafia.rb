cask "kolmafia" do
  version "29167"
  sha256 "2db66924736fba10c610ef2226292b7a4e73b60f146f2f9d4f3724c8a3a0909d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29167/KoLmafia-26.08.29167.dmg",
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
