cask "kolmafia" do
  version "26886"
  sha256 "5e590d7fd7e9e1b2d2f8aa9ffc5710b1516b3e673482299378712f5c644789c1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26886/KoLmafia-22.10.26886.dmg",
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
