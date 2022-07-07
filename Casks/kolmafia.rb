cask "kolmafia" do
  version "26539"
  sha256 "ba4022d584056f28dfd706c6b0392edcbf74b1e098627e2185186553b9a1c65b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26539/KoLmafia-22.07.26539.dmg",
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
