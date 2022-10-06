cask "kolmafia" do
  version "26818"
  sha256 "70768ba6a31283090045c1df52feb0c3186fede4d3bf38b06a69846091ad25fa"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26818/KoLmafia-22.10.26818.dmg",
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
