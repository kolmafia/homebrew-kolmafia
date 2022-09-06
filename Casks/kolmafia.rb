cask "kolmafia" do
  version "26728"
  sha256 "ba02f805277cc5647c968ab2d2fbe71856bff94976458b8ee72d2d1f4e0dc0ed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26728/KoLmafia-22.09.26728.dmg",
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
