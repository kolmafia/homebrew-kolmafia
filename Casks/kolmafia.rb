cask "kolmafia" do
  version "29324"
  sha256 "362ec6aee690a55ffe17b22205a7923faa28224c4a3f44c3c5e22d8fe9ea9608"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29324/KoLmafia-26.10.29324.dmg",
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
