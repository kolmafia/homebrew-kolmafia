cask "kolmafia" do
  version "26836"
  sha256 "a6b02271a754ee0965a2f1c36d594ae925785d5b59c2349f2ce6485c87a5c456"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26836/KoLmafia-22.10.26836.dmg",
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
