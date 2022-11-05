cask "kolmafia" do
  version "26894"
  sha256 "13cd88e1bfc045e130207c36b5d98d6a6adafd46f05e2c7882a8ec0ab7051718"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26894/KoLmafia-22.11.26894.dmg",
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
