cask "kolmafia" do
  version "26757"
  sha256 "58a5cf5efd010b28cfa152a50e91d099a1d39b1205d75752ca079c6c4c7b57d3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26757/KoLmafia-22.09.26757.dmg",
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
