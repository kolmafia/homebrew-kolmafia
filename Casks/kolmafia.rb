cask "kolmafia" do
  version "29175"
  sha256 "0995737bf2214b51fe064f8953f92686a144498189c2ea651511bd5752983e63"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29175/KoLmafia-26.08.29175.dmg",
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
