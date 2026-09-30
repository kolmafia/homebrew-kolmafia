cask "kolmafia" do
  version "29316"
  sha256 "582c1d447e246cb2ecaa2ead99bd88fcd06cfe3ef5465aab75bd171000ad89c9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29316/KoLmafia-26.09.29316.dmg",
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
