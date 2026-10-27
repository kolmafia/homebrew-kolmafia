cask "kolmafia" do
  version "29391"
  sha256 "50a5d3e3aeacef6284f329b1ba52fed7ed9bd9bf2c5fc1f69ae81b13282f5fdc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29391/KoLmafia-26.10.29391.dmg",
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
