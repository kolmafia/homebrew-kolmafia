cask "kolmafia" do
  version "29178"
  sha256 "24b7fc160f1985d2580f6beff2a21dc0beaab832f4bdd9977d4e1aee60895b99"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29178/KoLmafia-26.08.29178.dmg",
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
