cask "kolmafia" do
  version "29420"
  sha256 "79172b0240c32aed6e11da7e06408a640032a662e46e49dfec0f580fab8d0bff"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29420/KoLmafia-26.11.29420.dmg",
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
