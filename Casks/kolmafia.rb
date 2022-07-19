cask "kolmafia" do
  version "26587"
  sha256 "c482b9725023bca63b832ec051f21ba28b05150e09d99d7bb620ae4d8a68b353"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26587/KoLmafia-22.07.26587.dmg",
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
