cask "kolmafia" do
  version "26830"
  sha256 "ef79e0db020db7f93076f8462bc9a641b571f29ba57429783d965922ce9cb7b4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26830/KoLmafia-22.10.26830.dmg",
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
