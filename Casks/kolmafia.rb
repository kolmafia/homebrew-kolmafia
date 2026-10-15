cask "kolmafia" do
  version "29371"
  sha256 "fd748f7bc653138adf2764c2448feda27ee3698db60e87e28763d5ffb7fab4a5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29371/KoLmafia-26.10.29371.dmg",
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
