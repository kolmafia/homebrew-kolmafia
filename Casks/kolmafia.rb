cask "kolmafia" do
  version "29240"
  sha256 "a61a00452d638a99c0569930a22c3255ebd392251d02d668b1747244d1512b2b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29240/KoLmafia-26.09.29240.dmg",
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
