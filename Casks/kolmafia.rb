cask "kolmafia" do
  version "29305"
  sha256 "d76c040b2645730b446b154620848191b99ad0887669f79b67565f4f552013a8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29305/KoLmafia-26.09.29305.dmg",
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
