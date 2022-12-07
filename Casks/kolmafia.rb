cask "kolmafia" do
  version "26991"
  sha256 "5ffeb514f26ddf863a5999b8689dcd2afe3266ddf43631600fd869fc48675eef"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26991/KoLmafia-22.12.26991.dmg",
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
