cask "kolmafia" do
  version "29452"
  sha256 "269039f42a0c925d5fe10db1cde694f65404f4748aa0b5452fecace1451f83ea"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29452/KoLmafia-26.11.29452.dmg",
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
