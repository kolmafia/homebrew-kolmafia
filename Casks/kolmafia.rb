cask "kolmafia" do
  version "26959"
  sha256 "97f72700a7968d5346e3b2cf0c6d2c32d15a823b0013fbad867cff1e4b1025f8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26959/KoLmafia-22.11.26959.dmg",
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
