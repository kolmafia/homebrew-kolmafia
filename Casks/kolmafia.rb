cask "kolmafia" do
  version "26837"
  sha256 "ab294d85bf1a30a96e86edbc5aa7c3aa36dfc41c14c998ef9d400c9996519082"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26837/KoLmafia-22.10.26837.dmg",
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
