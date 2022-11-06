cask "kolmafia" do
  version "26898"
  sha256 "ef207dac2f11d9b9b59ecf759218c1a97f43ded1f77340855c468dd135108c9c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26898/KoLmafia-22.11.26898.dmg",
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
