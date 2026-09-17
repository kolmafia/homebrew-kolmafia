cask "kolmafia" do
  version "29279"
  sha256 "b4cee94abe4c32a9309faa46612a02accd4100ba6867a2b967c2afefb26b918e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29279/KoLmafia-26.09.29279.dmg",
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
