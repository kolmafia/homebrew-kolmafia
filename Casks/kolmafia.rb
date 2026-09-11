cask "kolmafia" do
  version "29250"
  sha256 "fb3b0b4fc83240c32a618d5fdda9e2650fa2e6d5d37b40ba5fd96d6da96ca676"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29250/KoLmafia-26.09.29250.dmg",
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
