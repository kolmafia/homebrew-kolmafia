cask "kolmafia" do
  version "26584"
  sha256 "b734b78862f81b0218251e3ab034721562822c4a7bf9e74664ff9dc421cf2ee3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26584/KoLmafia-22.07.26584.dmg",
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
