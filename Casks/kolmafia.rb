cask "kolmafia" do
  version "26897"
  sha256 "b13829f1da4c971a306db18c2e5a70b5cc5f353a448c92c7f45129c89b030d11"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26897/KoLmafia-22.11.26897.dmg",
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
