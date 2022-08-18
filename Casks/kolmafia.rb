cask "kolmafia" do
  version "26662"
  sha256 "0f4b1c9237f05ea6e93e00614f1ef19c520a3823b974ff09f82ff5fc8fa2bdcd"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26662/KoLmafia-22.08.26662.dmg",
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
