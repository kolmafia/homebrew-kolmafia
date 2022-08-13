cask "kolmafia" do
  version "26656"
  sha256 "0fd81c49bdf7a08a84ee4ccc4c38327c5928e823781351cb826c419d0a8aa200"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26656/KoLmafia-22.08.26656.dmg",
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
