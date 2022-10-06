cask "kolmafia" do
  version "26816"
  sha256 "062a931f18b5f74e2264aa82bac9d3063ac66dfb07b4ee7ffab92c622c78bf46"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26816/KoLmafia-22.10.26816.dmg",
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
