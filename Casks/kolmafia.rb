cask "kolmafia" do
  version "29327"
  sha256 "a6c38fca7d7e5c61ce01c56abf839d0da143b891c8a7f31dd50c523d8df39234"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29327/KoLmafia-26.10.29327.dmg",
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
