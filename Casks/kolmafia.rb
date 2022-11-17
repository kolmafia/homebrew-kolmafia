cask "kolmafia" do
  version "26957"
  sha256 "e937ef1239d1c42cfe7627456720366e1a4700156db7e6d40c639d224a98a72b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26957/KoLmafia-22.11.26957.dmg",
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
