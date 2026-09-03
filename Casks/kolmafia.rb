cask "kolmafia" do
  version "29228"
  sha256 "06147ffaccebc281cbe0ed6f2697063b69ae3f6fc4340a405b16e98476532719"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29228/KoLmafia-26.09.29228.dmg",
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
