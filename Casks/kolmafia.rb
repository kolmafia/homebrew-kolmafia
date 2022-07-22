cask "kolmafia" do
  version "26592"
  sha256 "6ab68cb993922ba3be76bc7451d8d60239b3e0e4fb535e09be0759b3e4e83e49"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26592/KoLmafia-22.07.26592.dmg",
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
