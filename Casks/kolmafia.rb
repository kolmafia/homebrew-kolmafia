cask "kolmafia" do
  version "26831"
  sha256 "f879c8387819bc5fb476f017c0d974d1828b6e724ab5fa3b0ccb209587589fa4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26831/KoLmafia-22.10.26831.dmg",
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
