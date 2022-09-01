cask "kolmafia" do
  version "26715"
  sha256 "494c2cf62ff053af0e80259b5ceb8198fc89b8cba09339106c6dbe034bf72f36"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26715/KoLmafia-22.09.26715.dmg",
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
