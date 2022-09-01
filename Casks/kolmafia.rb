cask "kolmafia" do
  version "26713"
  sha256 "a546d1ef891fa1799a5ca20d43755a030068b4c554dd668fc28428329a226704"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26713/KoLmafia-22.09.26713.dmg",
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
