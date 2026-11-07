cask "kolmafia" do
  version "29413"
  sha256 "4f77e83c3033ab71396add628cca62c0b9c91701afb2ce7eb6b408478f72cf0b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29413/KoLmafia-26.11.29413.dmg",
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
