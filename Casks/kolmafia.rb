cask "kolmafia" do
  version "26871"
  sha256 "f232a2cdc4f158a1c62852dc8d2e520ce4dd57018d6c2a3c96e2c6c0351a058d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26871/KoLmafia-22.10.26871.dmg",
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
