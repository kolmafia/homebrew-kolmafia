cask "kolmafia" do
  version "29270"
  sha256 "6a4e236df4e2cf3a7950171f484e32883f363dfd333f90432698abfbae77a6d3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29270/KoLmafia-26.09.29270.dmg",
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
