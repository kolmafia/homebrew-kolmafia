cask "kolmafia" do
  version "26725"
  sha256 "fac7c72033c171c495ebc044d53ab91f63dfc09739ace6f4496e4d1d08cc3140"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26725/KoLmafia-22.09.26725.dmg",
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
