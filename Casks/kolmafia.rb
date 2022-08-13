cask "kolmafia" do
  version "26654"
  sha256 "d12cd011f5ef8586d938876afd8a6fbf56f2826168cf6c9861cb5ed9974d43ba"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26654/KoLmafia-22.08.26654.dmg",
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
