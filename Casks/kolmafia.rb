cask "kolmafia" do
  version "29231"
  sha256 "f9eb3ef9078cfceed455728435c42715c0c28edcd49f6e3ad10e9f6b350d1c84"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29231/KoLmafia-26.09.29231.dmg",
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
