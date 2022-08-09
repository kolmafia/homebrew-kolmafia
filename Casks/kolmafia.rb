cask "kolmafia" do
  version "26635"
  sha256 "96711b928ec293d5a92c9a011a7c2113938a535a6dc578a34ea05776a3bdb8f7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26635/KoLmafia-22.08.26635.dmg",
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
