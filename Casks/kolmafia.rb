cask "kolmafia" do
  version "26875"
  sha256 "3ba5fc8a9cb21366158a012492828ab61c67919a8a256d8bbbc16f5153135807"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26875/KoLmafia-22.10.26875.dmg",
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
