cask "kolmafia" do
  version "29296"
  sha256 "0196aa1e6ff05ebb22926b98986883ac012fc511dd54e3bf5cd01b30229fa073"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29296/KoLmafia-26.09.29296.dmg",
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
