cask "kolmafia" do
  version "26731"
  sha256 "f428fde8b521739cbd7cf3634b52de4cb8ac335774ce8975dbfa35ffde6d859c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26731/KoLmafia-22.09.26731.dmg",
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
