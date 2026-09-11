cask "kolmafia" do
  version "29249"
  sha256 "a5c543f757b4d9b956b750f4357998b04173fcaec547b050786298197f3649b4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29249/KoLmafia-26.09.29249.dmg",
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
