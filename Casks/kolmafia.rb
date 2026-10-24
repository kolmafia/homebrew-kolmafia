cask "kolmafia" do
  version "29385"
  sha256 "1a2be16227ac9eb2ab3cdcd60061850538b9158e561fc9f019bcaa786d488134"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29385/KoLmafia-26.10.29385.dmg",
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
