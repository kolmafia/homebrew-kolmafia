cask "kolmafia" do
  version "26772"
  sha256 "037a934f4684af7f0598d7a6b2b4ad1d3a6a6c4526ae169a41a52c17f4005b63"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26772/KoLmafia-22.09.26772.dmg",
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
