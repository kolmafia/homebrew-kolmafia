cask "kolmafia" do
  version "26596"
  sha256 "de7a91c1a91d0db450b94d478a3551a12882e852ec26dd0260e90f4af0d69d88"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26596/KoLmafia-22.07.26596.dmg",
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
