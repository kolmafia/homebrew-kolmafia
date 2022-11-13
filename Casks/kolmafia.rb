cask "kolmafia" do
  version "26943"
  sha256 "00995439cce28361e338c5fed4f3ae69d3e525e03f2c1aebfd4da44478bae2fe"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26943/KoLmafia-22.11.26943.dmg",
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
