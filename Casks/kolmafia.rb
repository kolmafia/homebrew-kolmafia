cask "kolmafia" do
  version "26843"
  sha256 "7c94d77c3041faac770dcae29822ceddfa6d6443e745c273e4c4bdde222ff0ef"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26843/KoLmafia-22.10.26843.dmg",
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
