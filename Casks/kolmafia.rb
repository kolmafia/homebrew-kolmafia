cask "kolmafia" do
  version "26664"
  sha256 "3658f8b29b6c372787649e458ce5e74081adc10096e228ae419ac01335b19176"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26664/KoLmafia-22.08.26664.dmg",
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
