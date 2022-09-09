cask "kolmafia" do
  version "26733"
  sha256 "646d049764af582f8a5a5c7f0e6d00b76cb3214c1e8e5ac2e6e319c720f5d652"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26733/KoLmafia-22.09.26733.dmg",
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
