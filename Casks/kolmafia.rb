cask "kolmafia" do
  version "26679"
  sha256 "c7b9d7e997163f48416b5c9702c8fe4932113534596e5d8b91fb9996a55fc7ba"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26679/KoLmafia-22.08.26679.dmg",
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
