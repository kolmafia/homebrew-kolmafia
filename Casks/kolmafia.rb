cask "kolmafia" do
  version "26653"
  sha256 "0a47fc64c771b6395a6ada77e09b57c4caec1bba84414ac8ab5bba17bfc1e6f0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26653/KoLmafia-22.08.26653.dmg",
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
