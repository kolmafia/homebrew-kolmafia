cask "kolmafia" do
  version "26906"
  sha256 "ff058c918004d34e27269cdacad2bdefa46b4fc556c5b21e9c7ad353f1ef211d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26906/KoLmafia-22.11.26906.dmg",
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
