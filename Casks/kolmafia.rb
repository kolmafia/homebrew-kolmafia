cask "kolmafia" do
  version "29255"
  sha256 "28c5d3bd133a9451215f434da7a00e3aa1bf60d93d594f38b64df3b8e6cbb9ec"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29255/KoLmafia-26.09.29255.dmg",
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
