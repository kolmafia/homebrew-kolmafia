cask "kolmafia" do
  version "26695"
  sha256 "9f334bdcc68e4d962a13ecbd3e71ffba19db0236dac694cd4978163ab120c3ad"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26695/KoLmafia-22.08.26695.dmg",
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
