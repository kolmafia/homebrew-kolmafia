cask "kolmafia" do
  version "26946"
  sha256 "3e1e7b39a6ea91395cb9c3b231f557c60ac4060ad0fe8c86ba6bd2ed52ddcb18"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26946/KoLmafia-22.11.26946.dmg",
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
