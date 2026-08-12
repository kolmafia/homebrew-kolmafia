cask "kolmafia" do
  version "29157"
  sha256 "8f54f3664b2abb6ed8e2ed9e1263f7bea5644de21e56fc7f52630321f74c5717"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29157/KoLmafia-26.08.29157.dmg",
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
