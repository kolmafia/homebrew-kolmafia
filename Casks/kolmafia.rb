cask "kolmafia" do
  version "29397"
  sha256 "26d129df5552c0baca7807ebff230b0e500966eb32659e73d5e4a0d4e51f983e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29397/KoLmafia-26.10.29397.dmg",
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
