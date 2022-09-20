cask "kolmafia" do
  version "26770"
  sha256 "13472e8c3359e06d9fcc3846c2fd196ad1b237c339683970f25a5729d7483ed2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26770/KoLmafia-22.09.26770.dmg",
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
