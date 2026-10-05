cask "kolmafia" do
  version "29335"
  sha256 "bde5484f5a37305375b5b3ff6def9588e46da8f2b7e03cfafa3efc859bb05db6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29335/KoLmafia-26.10.29335.dmg",
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
