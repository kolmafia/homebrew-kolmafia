cask "kolmafia" do
  version "26925"
  sha256 "5b3b5c13b9a6439dbd7d0b830cb190a3e1c94a02dd0f250e43e47f4ee6fd0458"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26925/KoLmafia-22.11.26925.dmg",
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
