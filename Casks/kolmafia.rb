cask "kolmafia" do
  version "26640"
  sha256 "160af0a23fd935dea322b71ccec7df08e55e4c89fbb24d65d06932697f5a050b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26640/KoLmafia-22.08.26640.dmg",
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
