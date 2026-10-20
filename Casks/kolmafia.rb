cask "kolmafia" do
  version "29378"
  sha256 "31d2623a863f265fd1aa3249d4eeb0c8e661764a125d4b9ab8372ff3dc40ee75"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29378/KoLmafia-26.10.29378.dmg",
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
