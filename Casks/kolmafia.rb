cask "kolmafia" do
  version "26569"
  sha256 "5f0c5c30dbecf4448f3e11c49135af591f7270e95271311946af77e3211df509"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26569/KoLmafia-22.07.26569.dmg",
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
