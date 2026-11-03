cask "kolmafia" do
  version "29407"
  sha256 "e7756f6e68815faec88dd312e8c618569bb412e8f5df1bcd5c2d2c3f5d775dc4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29407/KoLmafia-26.11.29407.dmg",
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
