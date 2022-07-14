cask "kolmafia" do
  version "26563"
  sha256 "766a06afb610676a8cdfd04f310a6979d5e062f6c89f2816639aa92b280aa93d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26563/KoLmafia-22.07.26563.dmg",
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
