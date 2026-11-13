cask "kolmafia" do
  version "29429"
  sha256 "cbf77bc5d5a3be70e21681307482b4ef644b37edf3d5149d75cb55fdd1796e93"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29429/KoLmafia-26.11.29429.dmg",
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
