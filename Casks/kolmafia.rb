cask "kolmafia" do
  version "26840"
  sha256 "749ba4e85d6b4ed85e5b27afd3d39cb190cf9d23a32acc40609f1500043d1de1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26840/KoLmafia-22.10.26840.dmg",
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
