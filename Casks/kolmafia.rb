cask "kolmafia" do
  version "26941"
  sha256 "067cc469e93c3b5f4ea969dcc26115eddad9e614b71bdd18ba41e41663bdcd1f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26941/KoLmafia-22.11.26941.dmg",
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
