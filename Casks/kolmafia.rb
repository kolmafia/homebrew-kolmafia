cask "kolmafia" do
  version "26802"
  sha256 "f28d7ab0d43bf037431d870c3951746361a3c28468366f2e695490cdbe137d15"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26802/KoLmafia-22.09.26802.dmg",
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
