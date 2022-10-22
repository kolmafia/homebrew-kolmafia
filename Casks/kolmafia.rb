cask "kolmafia" do
  version "26868"
  sha256 "204d62b82ab2af17508d81b4bf386ca8e006f76b02eda7e96e8c3c0f989bbc50"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26868/KoLmafia-22.10.26868.dmg",
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
