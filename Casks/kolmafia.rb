cask "kolmafia" do
  version "26820"
  sha256 "4003488fb9174494363ceb983424318eb1158b6cdbb96c42c75e2962ca614ad7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26820/KoLmafia-22.10.26820.dmg",
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
