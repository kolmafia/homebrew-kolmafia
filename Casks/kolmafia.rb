cask "kolmafia" do
  version "29326"
  sha256 "c9680dd584725ecb7df0d09283977ce422eecc02acd101cb516978d30949d68d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29326/KoLmafia-26.10.29326.dmg",
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
