cask "kolmafia" do
  version "26953"
  sha256 "c009276ae2b04d391e5b3b5eb65717a25832ed4a527eebf26092e4e01821caca"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26953/KoLmafia-22.11.26953.dmg",
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
