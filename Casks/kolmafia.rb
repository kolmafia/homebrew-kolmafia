cask "kolmafia" do
  version "26549"
  sha256 "af6ff550e77848158071dadd18f91bcd65f92f892689703f057bc2159b520587"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26549/KoLmafia-22.07.26549.dmg",
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
