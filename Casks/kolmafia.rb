cask "kolmafia" do
  version "26634"
  sha256 "eb29713529ce827ff82fd7b628ca7df72417339dab873f2e52d1db8f86203c02"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26634/KoLmafia-22.08.26634.dmg",
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
