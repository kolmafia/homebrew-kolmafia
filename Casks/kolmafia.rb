cask "kolmafia" do
  version "29446"
  sha256 "4aecd84d1795648539b6dd85be434f291ec6db34968b1cbb1fd969b2b77bf112"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29446/KoLmafia-26.11.29446.dmg",
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
