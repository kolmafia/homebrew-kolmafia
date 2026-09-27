cask "kolmafia" do
  version "29302"
  sha256 "4365ceaae7ba6d26f000c8e0b8c1f896aba725084676e5461c7253725036959d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29302/KoLmafia-26.09.29302.dmg",
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
