cask "kolmafia" do
  version "29439"
  sha256 "0fa7780f180e99f6f143603059e65474929ea10e64d4796a052da5c7ea3f9dc8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29439/KoLmafia-26.11.29439.dmg",
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
