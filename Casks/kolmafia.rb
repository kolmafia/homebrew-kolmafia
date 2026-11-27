cask "kolmafia" do
  version "29485"
  sha256 "2cdaa7ac24bee07a80e45d66e6e625a94d09d35e3bbf8a231cac024c5e6ed79e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29485/KoLmafia-26.11.29485.dmg",
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
