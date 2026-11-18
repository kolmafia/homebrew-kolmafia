cask "kolmafia" do
  version "29441"
  sha256 "b9313ac39b682dfbf2ba33c8d7cf1f63372eeed1537970cc74d5bea4bc345ed4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29441/KoLmafia-26.11.29441.dmg",
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
