cask "kolmafia" do
  version "26931"
  sha256 "f8e9361266f2308b3092d7f6ca9fc699bca843ea39d4cf3cbe629514a16b2087"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26931/KoLmafia-22.11.26931.dmg",
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
