cask "kolmafia" do
  version "26578"
  sha256 "d32c5dd1d17af9224f5966767a13d60b887d196d92d737a8d32c48ad1a8fb84a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26578/KoLmafia-22.07.26578.dmg",
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
