cask "kolmafia" do
  version "26801"
  sha256 "0e2583f48192b457f0df5ea9934c472eb92e6184094cc31e20318c78257a591c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26801/KoLmafia-22.09.26801.dmg",
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
