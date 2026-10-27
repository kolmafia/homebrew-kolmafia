cask "kolmafia" do
  version "29392"
  sha256 "48d88dd561feec08cfed7f98891be9b260bee836ed323e3f45acd55695bcfed3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29392/KoLmafia-26.10.29392.dmg",
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
