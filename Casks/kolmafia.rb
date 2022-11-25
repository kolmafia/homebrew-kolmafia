cask "kolmafia" do
  version "26976"
  sha256 "e636dc5ffd58c8f3884ee72693193ac62d066581bbf4a33a4f345461186eda6b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26976/KoLmafia-22.11.26976.dmg",
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
