cask "kolmafia" do
  version "26922"
  sha256 "0985b27758058847b74bb6910058bb3dac0b2c0e118cbed67a8d27045a03dca8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26922/KoLmafia-22.11.26922.dmg",
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
