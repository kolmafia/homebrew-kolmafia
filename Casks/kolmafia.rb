cask "kolmafia" do
  version "26965"
  sha256 "237520d5a7546462825a7845ae2ab84cfaf654e3d8196a025f8af38bf3d7a204"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26965/KoLmafia-22.11.26965.dmg",
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
