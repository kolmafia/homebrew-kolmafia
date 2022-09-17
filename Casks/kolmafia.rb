cask "kolmafia" do
  version "26756"
  sha256 "d77c67cef0029f427c74aed6967d3df5560439f6af3a1e3805b6918d1d2170b9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26756/KoLmafia-22.09.26756.dmg",
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
