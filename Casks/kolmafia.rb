cask "kolmafia" do
  version "26783"
  sha256 "4840f0c49cdcc4d43969947c951b87d0d40069013a11120fcce09a62fb271cb0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26783/KoLmafia-22.09.26783.dmg",
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
