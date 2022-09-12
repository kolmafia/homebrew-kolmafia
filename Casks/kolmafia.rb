cask "kolmafia" do
  version "26741"
  sha256 "19a333ef7e26e19429353e6e040bff87434afbb7f6c364e50ff9b725a898caac"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26741/KoLmafia-22.09.26741.dmg",
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
