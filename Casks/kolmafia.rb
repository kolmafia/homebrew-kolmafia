cask "kolmafia" do
  version "26740"
  sha256 "5e2a47641b1817fdc0a459008ddb371af01f3c820ea5e3df763ade9b9f1357c8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26740/KoLmafia-22.09.26740.dmg",
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
