cask "kolmafia" do
  version "26977"
  sha256 "ea5472d69aa78e3d9434a98e04e8140e0dd73d79d6db0263e0605085c5071fb2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26977/KoLmafia-22.11.26977.dmg",
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
