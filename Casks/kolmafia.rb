cask "kolmafia" do
  version "26627"
  sha256 "a8f3a6249334bb60662d991182c6cb7e9bceff0eaaaf017ad6992c3309489471"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26627/KoLmafia-22.08.26627.dmg",
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
