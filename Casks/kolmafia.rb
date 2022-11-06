cask "kolmafia" do
  version "26901"
  sha256 "6c06a20f6a225fdfce0f57ba80fae1aede64e7db67a9e9f68d58ae5deb6b4511"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26901/KoLmafia-22.11.26901.dmg",
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
