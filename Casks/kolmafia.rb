cask "kolmafia" do
  version "26568"
  sha256 "6e7a48dfb21cd054f93adeb461dba8e026c94ac96ae2c396fe34215076e57491"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26568/KoLmafia-22.07.26568.dmg",
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
