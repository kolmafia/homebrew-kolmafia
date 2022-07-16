cask "kolmafia" do
  version "26571"
  sha256 "f81cc93c101145f27fbaeddfc3e356035984d168cee3f19b57a196707421e859"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26571/KoLmafia-22.07.26571.dmg",
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
