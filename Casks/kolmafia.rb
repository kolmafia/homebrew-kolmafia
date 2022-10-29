cask "kolmafia" do
  version "26885"
  sha256 "8cea4381cca910687914812cbab8053efa8a0e1e16ee17d1e109343dcc5ce366"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26885/KoLmafia-22.10.26885.dmg",
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
