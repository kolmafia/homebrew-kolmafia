cask "kolmafia" do
  version "26973"
  sha256 "06691ff2829b435f5be31b1544cc12d32304b6679f161265dfb543d9028d9fc2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26973/KoLmafia-22.11.26973.dmg",
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
