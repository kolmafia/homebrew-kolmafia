cask "kolmafia" do
  version "27004"
  sha256 "4798f54b851857a847daf1d05b94000bf609138a48ee7f1976f5bb9e340489ef"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27004/KoLmafia-22.12.27004.dmg",
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
