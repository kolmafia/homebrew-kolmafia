cask "kolmafia" do
  version "29405"
  sha256 "906c693d9e8bb4c51d0464f52fe96388155a9b79eeb4ff35676848cf12970985"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29405/KoLmafia-26.11.29405.dmg",
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
