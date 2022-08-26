cask "kolmafia" do
  version "26697"
  sha256 "64af1cc3bc4ba81f3fb7bfaf148226cdc8fc66d189ccb41a683991f65cfd63be"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26697/KoLmafia-22.08.26697.dmg",
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
