cask "kolmafia" do
  version "29214"
  sha256 "a2328a1d0434bb43492fc1c94afce2de86d33107a1c15bcc4dcaba7458683981"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29214/KoLmafia-26.08.29214.dmg",
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
