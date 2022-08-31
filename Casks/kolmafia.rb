cask "kolmafia" do
  version "26711"
  sha256 "b79b0b627bac52a53a34135670e7ac58621aff431bc08e253e8721122dee754e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26711/KoLmafia-22.08.26711.dmg",
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
