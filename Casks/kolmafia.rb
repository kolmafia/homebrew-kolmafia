cask "kolmafia" do
  version "26903"
  sha256 "0edd77458dd42b7f62b77b5c450d63f2484cfd3cfea6a79280ce4c4bd47dfaeb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26903/KoLmafia-22.11.26903.dmg",
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
