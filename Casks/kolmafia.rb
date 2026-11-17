cask "kolmafia" do
  version "29438"
  sha256 "6459dbec93bb2824802ba4fe26d42dcd02bc3a12e768b26af4829ceee9541eef"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29438/KoLmafia-26.11.29438.dmg",
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
