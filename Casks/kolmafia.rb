cask "kolmafia" do
  version "29261"
  sha256 "7301c31528076ebef6453b0f02925c9c86bd42112a8b7122921ce2d464400b50"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29261/KoLmafia-26.09.29261.dmg",
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
