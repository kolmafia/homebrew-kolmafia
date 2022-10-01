cask "kolmafia" do
  version "26804"
  sha256 "18c6c9fd4b2a39224fc1802fe0ebb8dcbcb56a2460e043529ffb4249e0fc2572"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26804/KoLmafia-22.10.26804.dmg",
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
