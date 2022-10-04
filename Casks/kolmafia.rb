cask "kolmafia" do
  version "26810"
  sha256 "dc06a526ef4cfb343bf49d4633d59dd3b78a2337ccec22f404ab6187eabe1725"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26810/KoLmafia-22.10.26810.dmg",
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
