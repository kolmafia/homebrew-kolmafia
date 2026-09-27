cask "kolmafia" do
  version "29307"
  sha256 "1e805177723847957384e7921da2fa2c2f29b0c510a7bde526a8df3bd751ef51"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29307/KoLmafia-26.09.29307.dmg",
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
