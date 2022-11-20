cask "kolmafia" do
  version "26968"
  sha256 "d298093e72865c5cc3a204e9795b2227d203e0c43c95f4e576a11109c06aae76"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26968/KoLmafia-22.11.26968.dmg",
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
