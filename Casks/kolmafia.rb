cask "kolmafia" do
  version "26682"
  sha256 "ad0c523797b7f20fb2efde18dadff0ad9f0cdacf8af691433a41d8dbd0779fc1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26682/KoLmafia-22.08.26682.dmg",
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
