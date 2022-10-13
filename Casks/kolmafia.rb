cask "kolmafia" do
  version "26841"
  sha256 "20c3ec0929e97b141e39fc63c835c98ae413399247388ff16e0445903c89ccbb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26841/KoLmafia-22.10.26841.dmg",
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
