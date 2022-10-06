cask "kolmafia" do
  version "26815"
  sha256 "62357a6749202834f83f7f98e1761bd525ebf793741d7b77ea900e523c27144e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26815/KoLmafia-22.10.26815.dmg",
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
