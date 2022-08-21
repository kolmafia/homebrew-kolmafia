cask "kolmafia" do
  version "26681"
  sha256 "8d2ce3b0bfc9b48924ff8b50ad42f17d0b90e68848f799e34bb47891473bd9ab"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26681/KoLmafia-22.08.26681.dmg",
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
