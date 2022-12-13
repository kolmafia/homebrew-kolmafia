cask "kolmafia" do
  version "26998"
  sha256 "bfcf615d8da79477795519011da012e588a1a17faa028c4f25c0d16c6e9946c3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26998/KoLmafia-22.12.26998.dmg",
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
