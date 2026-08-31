cask "kolmafia" do
  version "29210"
  sha256 "93dda430dffe4fc6aa59f983941a9399844e87f258ae6de5840d0a671d076fd4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29210/KoLmafia-26.08.29210.dmg",
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
