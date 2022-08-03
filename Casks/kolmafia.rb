cask "kolmafia" do
  version "26622"
  sha256 "e50474a0762d047c40ff62def87b65eb37e7ba9672c2992aaf9e74bc546e3ca3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26622/KoLmafia-22.08.26622.dmg",
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
