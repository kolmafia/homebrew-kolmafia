cask "kolmafia" do
  version "26817"
  sha256 "62dc88720d98d159422af2ecd3706110927490503a1266669bd981bfc24dfd7b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26817/KoLmafia-22.10.26817.dmg",
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
