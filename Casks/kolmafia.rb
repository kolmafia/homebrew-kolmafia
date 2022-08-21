cask "kolmafia" do
  version "26680"
  sha256 "6492e5ff66252ef5d1bae675c5521b8e210215f1d540ae30cf8246f81ab81b93"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26680/KoLmafia-22.08.26680.dmg",
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
