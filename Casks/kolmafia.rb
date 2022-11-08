cask "kolmafia" do
  version "26914"
  sha256 "e9b04020a30935aef38ce7aab0bb6ae5ec11e62c55807be8511a7b23ea990600"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26914/KoLmafia-22.11.26914.dmg",
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
