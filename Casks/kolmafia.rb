cask "kolmafia" do
  version "29293"
  sha256 "d69a363f29eed3f4b90858c87c978427dc08eed3a8ffe1fe3c62423b36a43b1e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29293/KoLmafia-26.09.29293.dmg",
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
