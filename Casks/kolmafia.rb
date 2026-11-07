cask "kolmafia" do
  version "29411"
  sha256 "02d9fb9e136a041e2da183554c1a8bd056f67f12230f419e07a4d1f92be5970b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29411/KoLmafia-26.11.29411.dmg",
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
