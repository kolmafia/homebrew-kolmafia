cask "kolmafia" do
  version "26699"
  sha256 "449618c8a12d7dbe377609f275d83dc021cecf3972227743dd979044914b0839"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26699/KoLmafia-22.08.26699.dmg",
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
