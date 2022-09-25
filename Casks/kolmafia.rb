cask "kolmafia" do
  version "26796"
  sha256 "5af1bb251f9e4066b263827e95637551f944bc7974bf96fdf0baacd74686e2d3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26796/KoLmafia-22.09.26796.dmg",
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
