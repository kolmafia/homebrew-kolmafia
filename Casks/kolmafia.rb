cask "kolmafia" do
  version "29435"
  sha256 "3ea5920a29971476e32a3a3bc7b3c5f40f2cce4e5da8d17ceea6b9fe148a4d1c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29435/KoLmafia-26.11.29435.dmg",
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
