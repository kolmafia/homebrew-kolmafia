cask "kolmafia" do
  version "26985"
  sha256 "d9f4d2009ea134d38ccbcb33b5a7a7cc8c2cc7ae88aa75601b1d7843930d2e21"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26985/KoLmafia-22.11.26985.dmg",
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
