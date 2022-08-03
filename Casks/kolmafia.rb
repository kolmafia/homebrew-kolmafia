cask "kolmafia" do
  version "26623"
  sha256 "73a0ddeea04db58dfe11c935ef7424edc7df20daa23053739d85f4cd9b75f525"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26623/KoLmafia-22.08.26623.dmg",
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
