cask "kolmafia" do
  version "26872"
  sha256 "79d0652ab2a08503b4e697a3000249d95bd9a10830f7f7d0b080fe7d481627d7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26872/KoLmafia-22.10.26872.dmg",
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
