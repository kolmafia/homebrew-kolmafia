cask "kolmafia" do
  version "29350"
  sha256 "50c55a8a131446f6a421bc938ff89191664a6be7a726b863842faab61bc0cc3b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29350/KoLmafia-26.10.29350.dmg",
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
