cask "kolmafia" do
  version "26995"
  sha256 "d7d0ca00d4d53a73aceaeea52595b7eebae27cf727051a693c88276e119c316e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26995/KoLmafia-22.12.26995.dmg",
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
