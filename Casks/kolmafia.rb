cask "kolmafia" do
  version "29232"
  sha256 "b3a4a7930f88221614180efd80a29d77f53d1066437fe08419d46a610a9bc6ed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29232/KoLmafia-26.09.29232.dmg",
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
