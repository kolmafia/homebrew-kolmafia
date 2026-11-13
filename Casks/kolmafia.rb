cask "kolmafia" do
  version "29428"
  sha256 "1ec06ecfeaf2e015ff873c1a254d53e840a426b142a47c5409a0a9311823ce88"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29428/KoLmafia-26.11.29428.dmg",
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
