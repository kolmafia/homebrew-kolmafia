cask "kolmafia" do
  version "26564"
  sha256 "b1acc883c0d62f79d55824d3050a7f3a2625ad933387fa698d4d644186163ca1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26564/KoLmafia-22.07.26564.dmg",
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
