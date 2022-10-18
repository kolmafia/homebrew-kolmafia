cask "kolmafia" do
  version "26859"
  sha256 "4196b9a7aa817d61acb807b81a41386f1af5a4f684816b1840ac6f3ef01fd412"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26859/KoLmafia-22.10.26859.dmg",
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
