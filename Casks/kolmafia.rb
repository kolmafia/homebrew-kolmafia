cask "kolmafia" do
  version "26720"
  sha256 "14cf67f3d66f18f0c8dc678a0dc71e2e0d075a0580ea8d71b415313c3934232a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26720/KoLmafia-22.09.26720.dmg",
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
