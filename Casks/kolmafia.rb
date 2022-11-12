cask "kolmafia" do
  version "26927"
  sha256 "99e3d1262502ee630e490d57ad1d0f6121dd0ad042d49ccb9bf0ddfab8cb40c9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26927/KoLmafia-22.11.26927.dmg",
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
