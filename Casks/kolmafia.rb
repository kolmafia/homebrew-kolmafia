cask "kolmafia" do
  version "26612"
  sha256 "b6f59f72de73b1dfef5d8efb0b53e7da37bd2474ca8e14631445ea271f642034"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26612/KoLmafia-22.07.26612.dmg",
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
