cask "kolmafia" do
  version "26579"
  sha256 "6b7b275a3861d9b2050bcfa793eab472d67e6e89a0c0cc9e2722d8434fdf6ff0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26579/KoLmafia-22.07.26579.dmg",
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
