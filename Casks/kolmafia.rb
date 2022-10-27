cask "kolmafia" do
  version "26881"
  sha256 "7d8e791e017fe321fbf3f526ecef1504fdfebfff758e54fadd0f1406d6a63e51"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26881/KoLmafia-22.10.26881.dmg",
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
