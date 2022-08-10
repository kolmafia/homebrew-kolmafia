cask "kolmafia" do
  version "26649"
  sha256 "df1f7d7493d9d475fa8f8107afa344dc182e803328e4292921cdae47763c9c58"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26649/KoLmafia-22.08.26649.dmg",
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
