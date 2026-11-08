cask "kolmafia" do
  version "29416"
  sha256 "6858c17c81f2b5f12811a8bd97ef90290ef4c29453a7f8dad3659907e5d3b085"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29416/KoLmafia-26.11.29416.dmg",
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
