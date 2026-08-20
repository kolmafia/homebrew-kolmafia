cask "kolmafia" do
  version "29176"
  sha256 "c01bfccc84a92a8308a6a5f8ac1d6082b47ed57ae06f141df564cb192150abd4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29176/KoLmafia-26.08.29176.dmg",
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
