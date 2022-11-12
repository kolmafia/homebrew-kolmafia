cask "kolmafia" do
  version "26930"
  sha256 "161e4d6367fcb76233f1a767cbe9188cc18f0b1eec10ef566709eacb5f33378d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26930/KoLmafia-22.11.26930.dmg",
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
