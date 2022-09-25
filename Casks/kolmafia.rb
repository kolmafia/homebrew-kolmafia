cask "kolmafia" do
  version "26797"
  sha256 "c26aab527f82c3fe0add092399e86d3bb49740a53c23689db7d1260e3e189b34"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26797/KoLmafia-22.09.26797.dmg",
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
