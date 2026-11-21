cask "kolmafia" do
  version "29456"
  sha256 "f7907d1875927d9459f2e3a5656729109a8edb5b88651fb60010e2cc274b9cec"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29456/KoLmafia-26.11.29456.dmg",
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
