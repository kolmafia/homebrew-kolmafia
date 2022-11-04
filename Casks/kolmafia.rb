cask "kolmafia" do
  version "26892"
  sha256 "3ba558ba9f51bcbca792b62a04dbe3cfc9d4960d5acf8095162f235737f4a491"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26892/KoLmafia-22.11.26892.dmg",
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
