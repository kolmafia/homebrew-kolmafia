cask "kolmafia" do
  version "29276"
  sha256 "3c3ebda751b7a1e560faa82188e98a4050a7c5ad7562aa2134ede3b63f128763"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29276/KoLmafia-26.09.29276.dmg",
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
