cask "kolmafia" do
  version "26620"
  sha256 "66c0a380e75653c129d60b3dd46458d37aaa83d4208d75bbd0e1e21b6cb7a992"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26620/KoLmafia-22.08.26620.dmg",
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
