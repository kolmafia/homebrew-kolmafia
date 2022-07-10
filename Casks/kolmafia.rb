cask "kolmafia" do
  version "26552"
  sha256 "ba3b841e0325542722eb8a268cdf2583b676f5b4aa1896eaa2d796c42deeb1d0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26552/KoLmafia-22.07.26552.dmg",
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
