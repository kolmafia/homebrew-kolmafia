cask "kolmafia" do
  version "29310"
  sha256 "32023974a19da68fc799599789fc69852e48bac7b78e0af740a84177295a44c1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29310/KoLmafia-26.09.29310.dmg",
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
