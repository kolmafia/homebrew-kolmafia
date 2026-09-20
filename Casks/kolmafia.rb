cask "kolmafia" do
  version "29285"
  sha256 "0a6031a564588a1baa4b464b4cded7a22b4c6f2c1ec7b0d364965076329e51c5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29285/KoLmafia-26.09.29285.dmg",
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
