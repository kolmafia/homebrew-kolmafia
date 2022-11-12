cask "kolmafia" do
  version "26933"
  sha256 "70cbc6745777d97af39d25b5a80466ebe29448a16d897b159052c0f7959ab5f1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26933/KoLmafia-22.11.26933.dmg",
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
