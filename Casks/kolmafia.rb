cask "kolmafia" do
  version "29331"
  sha256 "4d7bd79d84395f6e7ee133dfce0aaef71e2bbed1cb7f83c950f3d2fec1da34ce"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29331/KoLmafia-26.10.29331.dmg",
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
