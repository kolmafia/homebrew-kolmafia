cask "kolmafia" do
  version "26598"
  sha256 "df8e7dd3c2052869c28c289d648043b742f7722f5e50d9a398ad10df448218ef"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26598/KoLmafia-22.07.26598.dmg",
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
