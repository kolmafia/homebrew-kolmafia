cask "kolmafia" do
  version "26900"
  sha256 "d97b3da6c8dfcef5a1d9f5e6c156860aeddabe8ff175d9fbd85b9016e36eee21"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26900/KoLmafia-22.11.26900.dmg",
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
