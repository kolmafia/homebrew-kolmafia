cask "kolmafia" do
  version "26594"
  sha256 "d2f33cc653081b00323dfa974e7bd20242d18cc03e25c74d1084567a8e237a51"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26594/KoLmafia-22.07.26594.dmg",
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
