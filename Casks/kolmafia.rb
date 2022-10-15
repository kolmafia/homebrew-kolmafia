cask "kolmafia" do
  version "26846"
  sha256 "45a440aef20868471d832cea56bd50f574207a292bf15247fbfcee2d1b4d2010"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26846/KoLmafia-22.10.26846.dmg",
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
