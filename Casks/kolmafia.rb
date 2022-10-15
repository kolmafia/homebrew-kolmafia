cask "kolmafia" do
  version "26847"
  sha256 "f1977b237e903b797bdbce77a628a7fc1a1414005393b237fa7eba502e3a29b8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26847/KoLmafia-22.10.26847.dmg",
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
