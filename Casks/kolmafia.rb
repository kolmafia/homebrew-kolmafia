cask "kolmafia" do
  version "29364"
  sha256 "922c2d60528a44caa4595c893f8249a4e6b21364bdc09387d4207b11f76f904b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29364/KoLmafia-26.10.29364.dmg",
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
