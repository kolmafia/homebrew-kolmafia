cask "kolmafia" do
  version "26754"
  sha256 "ecf1305214ec9817a907b4f2c27fdff6ce820220edb1fe7598ae10df3bba3366"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26754/KoLmafia-22.09.26754.dmg",
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
