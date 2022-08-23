cask "kolmafia" do
  version "26692"
  sha256 "98a2c669682babd6874f37bc9e81386bf1d69761a41bcaa1482b77cb20c35075"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26692/KoLmafia-22.08.26692.dmg",
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
