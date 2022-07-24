cask "kolmafia" do
  version "26599"
  sha256 "4ca4e14f91e5867a14624d0286a085f3b1becd1f717155e645843b99fe3cf36d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26599/KoLmafia-22.07.26599.dmg",
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
