cask "kolmafia" do
  version "27005"
  sha256 "f0de7f181ea8e78c5dd00be2efd4926d0cc712c3cfc90e5dbd60c329da632869"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27005/KoLmafia-22.12.27005.dmg",
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
