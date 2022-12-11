cask "kolmafia" do
  version "26997"
  sha256 "f64a76034ff00bdef949f778a572de0bb40466a0e888d1a47209a4e0be6cfa40"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26997/KoLmafia-22.12.26997.dmg",
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
