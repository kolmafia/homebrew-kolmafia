cask "kolmafia" do
  version "26971"
  sha256 "282e794a199fb53ad8543110343c5060244e84776e22d5f8090c269a6f53e6cc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26971/KoLmafia-22.11.26971.dmg",
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
