cask "kolmafia" do
  version "26960"
  sha256 "38243599d051c2efc2c24b69b033049f405a330a65bdc462da88a78b094467c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26960/KoLmafia-22.11.26960.dmg",
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
