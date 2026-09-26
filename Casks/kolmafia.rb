cask "kolmafia" do
  version "29299"
  sha256 "78305c92a9007f3527311514384f492d44e7dcae4d8b51307d03b253a7769e1b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29299/KoLmafia-26.09.29299.dmg",
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
