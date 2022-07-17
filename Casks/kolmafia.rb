cask "kolmafia" do
  version "26574"
  sha256 "02c77e573f29d2f3468cda909fea55915dca57e80df2aef674d89b14b3c6164b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26574/KoLmafia-22.07.26574.dmg",
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
