cask "kolmafia" do
  version "26716"
  sha256 "49a5e442437752ecb9231fce10a253b286c2933d85480617f769211d27c517f2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26716/KoLmafia-22.09.26716.dmg",
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
