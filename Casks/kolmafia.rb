cask "kolmafia" do
  version "29223"
  sha256 "6c18c46002e82e1b4aa123b33d055682fa6bcdc51b73c7bbacaa74b24083eb56"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29223/KoLmafia-26.09.29223.dmg",
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
