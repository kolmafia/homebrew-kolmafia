cask "kolmafia" do
  version "29403"
  sha256 "644c67201bf5942e18d1cfaa9bf243cb24bc378c948e3674a59cf7cda92f22dc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29403/KoLmafia-26.11.29403.dmg",
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
