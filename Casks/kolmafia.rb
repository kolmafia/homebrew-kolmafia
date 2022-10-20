cask "kolmafia" do
  version "26864"
  sha256 "3e223661cb6d7e3cff2a4de26a4ac9cc107ddd4d4213b8792b94ac6af081ec13"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26864/KoLmafia-22.10.26864.dmg",
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
