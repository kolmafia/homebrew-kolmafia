cask "kolmafia" do
  version "29236"
  sha256 "11a0d3395dac3c946b8e050588dad2eab6412e54c65f85d1b86df0d0efb59cfe"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29236/KoLmafia-26.09.29236.dmg",
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
