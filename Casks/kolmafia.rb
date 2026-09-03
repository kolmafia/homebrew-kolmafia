cask "kolmafia" do
  version "29224"
  sha256 "b319dfaf9c9b39753d320a8b2b08df521026f2629358cadcf4b4e80f707c0641"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29224/KoLmafia-26.09.29224.dmg",
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
