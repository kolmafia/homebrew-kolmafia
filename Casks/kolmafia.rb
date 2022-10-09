cask "kolmafia" do
  version "26828"
  sha256 "e4bef2cb4aba1e774c6f5ef69d809765e9113068dbcc6c6f4a5250564314a958"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26828/KoLmafia-22.10.26828.dmg",
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
