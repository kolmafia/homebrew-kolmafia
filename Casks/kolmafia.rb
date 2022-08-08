cask "kolmafia" do
  version "26630"
  sha256 "d9534eb9bcd945367e586fdbde36c49571da93e3ee2df9e5d6085b72bd08213b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26630/KoLmafia-22.08.26630.dmg",
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
