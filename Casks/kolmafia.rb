cask "kolmafia" do
  version "26755"
  sha256 "da4a83bb74ec618ab4a328a7a4929404ac9e725c247f308c0608a6ad9f1d6f0d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26755/KoLmafia-22.09.26755.dmg",
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
