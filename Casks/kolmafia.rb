cask "kolmafia" do
  version "26879"
  sha256 "a51bae88816d4ac1872c341374d27edf59a8c1d4c5a5eeebdd6578a9af3713e0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26879/KoLmafia-22.10.26879.dmg",
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
