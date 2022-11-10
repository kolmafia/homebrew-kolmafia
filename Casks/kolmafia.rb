cask "kolmafia" do
  version "26920"
  sha256 "12a640516c5358bd0aa9a4d7e420a56fe84e78a1f0cbcf33efdaba778a71f9e6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26920/KoLmafia-22.11.26920.dmg",
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
