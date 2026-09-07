cask "kolmafia" do
  version "29237"
  sha256 "ae324064745623dce3088ee30aa61c37a06eec2d224e31e24a78154db56bd207"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29237/KoLmafia-26.09.29237.dmg",
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
