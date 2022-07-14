cask "kolmafia" do
  version "26561"
  sha256 "62d832115f34446b1848c9c8550c11463f2fb0a03c471f7b551dc7df01ef7bd0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26561/KoLmafia-22.07.26561.dmg",
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
