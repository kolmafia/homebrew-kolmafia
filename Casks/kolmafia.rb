cask "kolmafia" do
  version "26726"
  sha256 "d2599325c200bc200af37a74e42d0e52b0abfaad86c4c0c823c3d7eb1589015c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26726/KoLmafia-22.09.26726.dmg",
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
