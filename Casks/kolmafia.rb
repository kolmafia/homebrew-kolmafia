cask "kolmafia" do
  version "26863"
  sha256 "fd7d9c8e50bf8ed8869865883e3c0130ef092f2dcfd4b6467fb36c246d932a8f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26863/KoLmafia-22.10.26863.dmg",
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
