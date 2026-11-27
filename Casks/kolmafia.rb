cask "kolmafia" do
  version "29483"
  sha256 "0e69046e79e166fd1eba89691d7d41d4b64e4134ac61daa0bc45c3cf203a612d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29483/KoLmafia-26.11.29483.dmg",
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
