cask "kolmafia" do
  version "26683"
  sha256 "43be3ea0ed56776555956945d63f3c0bdde2094cf2ab6ddbe043fb9fd3f457d4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26683/KoLmafia-22.08.26683.dmg",
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
