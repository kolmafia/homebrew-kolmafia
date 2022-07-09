cask "kolmafia" do
  version "26548"
  sha256 "37109b7961194a04b0c94fae5a66bdd0b45f1de1f12223de2054c19ea256484e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26548/KoLmafia-22.07.26548.dmg",
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
