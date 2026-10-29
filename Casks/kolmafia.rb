cask "kolmafia" do
  version "29396"
  sha256 "51d75f1e63791190c231aac0e1c21d93573d87014b9c3591363e6adaf58e9c17"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29396/KoLmafia-26.10.29396.dmg",
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
