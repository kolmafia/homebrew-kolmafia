cask "kolmafia" do
  version "29257"
  sha256 "1f3c435c9f0bb71b1dd94b52bb446125ac4a732b13827ac71e6a9288e6380a6f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29257/KoLmafia-26.09.29257.dmg",
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
