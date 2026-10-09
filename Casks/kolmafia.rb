cask "kolmafia" do
  version "29355"
  sha256 "0a1e7e55132f752364dbcb5c850493ad8fda83128e2b464ecff853af8c585e59"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29355/KoLmafia-26.10.29355.dmg",
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
