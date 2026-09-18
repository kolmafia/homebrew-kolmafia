cask "kolmafia" do
  version "29282"
  sha256 "efc5d3a6ce5b1c82cf998e6e8b79011d011b5d99ea06fed563cfb4bd6a547a49"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29282/KoLmafia-26.09.29282.dmg",
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
