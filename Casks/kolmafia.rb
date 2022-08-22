cask "kolmafia" do
  version "26684"
  sha256 "6cf01fd9284541ab6545070bcbce2b90adb569bf1b62bc20a7189202a1fe2b6a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26684/KoLmafia-22.08.26684.dmg",
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
