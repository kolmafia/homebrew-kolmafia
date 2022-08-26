cask "kolmafia" do
  version "26700"
  sha256 "1911d605548b00c83eb6a5399d69ca81ed22f5c9663fb04944afcca52a981b79"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26700/KoLmafia-22.08.26700.dmg",
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
