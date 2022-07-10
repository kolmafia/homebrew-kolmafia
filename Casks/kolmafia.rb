cask "kolmafia" do
  version "26554"
  sha256 "d929f333c586acb20ebdad7c043b407d2b3f59fff6a76560c83985371b95fb2b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26554/KoLmafia-22.07.26554.dmg",
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
