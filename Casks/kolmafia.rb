cask "kolmafia" do
  version "26708"
  sha256 "6fcefa330e6483982af3aec5b852194378290c9c424064f50bfac07cb2f0ee50"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26708/KoLmafia-22.08.26708.dmg",
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
