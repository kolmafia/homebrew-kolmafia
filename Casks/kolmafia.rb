cask "kolmafia" do
  version "26961"
  sha256 "a78d4085d8810260b2ffb03eccbc5174ea19f82b5e3dcddfda4be5ae7fec45c9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26961/KoLmafia-22.11.26961.dmg",
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
