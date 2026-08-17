cask "kolmafia" do
  version "29165"
  sha256 "10e457a529882a0edd0db76b4838ff4449258f095bfbbf91ef29aa102de77d88"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29165/KoLmafia-26.08.29165.dmg",
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
