cask "kolmafia" do
  version "26786"
  sha256 "972836cab2606b80e89ebc4538f6feee46a1d81ad8fed96bcf93e3db9942d0c4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26786/KoLmafia-22.09.26786.dmg",
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
