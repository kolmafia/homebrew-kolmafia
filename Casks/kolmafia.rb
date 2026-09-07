cask "kolmafia" do
  version "29239"
  sha256 "4c756e55e292f0339e8bb0597a7b79e4e72332c4e7861e208567730d89a6ee51"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29239/KoLmafia-26.09.29239.dmg",
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
