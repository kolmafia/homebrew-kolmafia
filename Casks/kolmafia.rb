cask "kolmafia" do
  version "29292"
  sha256 "2bb3eeb33ca21e503178a6754c171add0c6d2ceea445b7fe106faa208c16d562"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29292/KoLmafia-26.09.29292.dmg",
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
