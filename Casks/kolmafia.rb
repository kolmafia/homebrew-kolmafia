cask "kolmafia" do
  version "29273"
  sha256 "2715716edd4d45b4414eee7ecfd22d1e1c4d7c9be71b64640bc418fae2a1d900"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29273/KoLmafia-26.09.29273.dmg",
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
