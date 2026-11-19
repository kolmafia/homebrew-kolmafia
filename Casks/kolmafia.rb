cask "kolmafia" do
  version "29448"
  sha256 "ab8af962a9fd3845b0a65ad84bfecabdc6d3c2078e899088541448e7e83e9997"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29448/KoLmafia-26.11.29448.dmg",
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
