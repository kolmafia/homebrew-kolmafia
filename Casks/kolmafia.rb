cask "kolmafia" do
  version "26629"
  sha256 "1b53c8a227820ed1468d49740ae47764249f11fcb499ebb0ba3562e01e28cd3e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26629/KoLmafia-22.08.26629.dmg",
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
