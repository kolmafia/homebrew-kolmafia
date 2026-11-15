cask "kolmafia" do
  version "29433"
  sha256 "2d6150330f404c1c05d3611652ff276b53c4a31fe41e56e508fa50fc524d841e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29433/KoLmafia-26.11.29433.dmg",
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
