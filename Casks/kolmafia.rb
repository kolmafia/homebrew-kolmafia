cask "kolmafia" do
  version "26869"
  sha256 "533ecbc132a50363909f1e2ac5d2e5c290286d35493fd5dab6aa17ab15b0c3fa"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26869/KoLmafia-22.10.26869.dmg",
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
