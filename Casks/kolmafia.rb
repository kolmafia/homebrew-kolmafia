cask "kolmafia" do
  version "26918"
  sha256 "a4fc7d0fdad77e482ebeabb7588d5ffd6e66857ab87d7296a85a266a212a2ef9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26918/KoLmafia-22.11.26918.dmg",
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
