cask "kolmafia" do
  version "29466"
  sha256 "01743e0e4dba097d11b28039a7d239761169bd1d00ece686540d397fee96e469"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29466/KoLmafia-26.11.29466.dmg",
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
