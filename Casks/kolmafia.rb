cask "kolmafia" do
  version "29215"
  sha256 "3c929dfc30de6fbfb3cb43e1817de9d47b3cf7b9a0db3deb0407048735ae62c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29215/KoLmafia-26.08.29215.dmg",
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
