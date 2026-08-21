cask "kolmafia" do
  version "29179"
  sha256 "0bc244584f0bb4c6eefb590e8e058d8996ade19b1a37bfa2e03583bc75b4dde5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29179/KoLmafia-26.08.29179.dmg",
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
