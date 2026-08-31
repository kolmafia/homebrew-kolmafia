cask "kolmafia" do
  version "29211"
  sha256 "b13a4489104c95769e32ce0b8d1197ce23dab654b8cf6b1a917b5205be4c3af2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29211/KoLmafia-26.08.29211.dmg",
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
