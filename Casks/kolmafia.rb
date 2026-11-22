cask "kolmafia" do
  version "29465"
  sha256 "ac43b0182e036311162e158b38f6c9592a261943e953183797ef43c0d1f677cb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29465/KoLmafia-26.11.29465.dmg",
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
