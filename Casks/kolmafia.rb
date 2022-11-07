cask "kolmafia" do
  version "26907"
  sha256 "f7545c49cfb454939af2972a9057a9a2a181755383c963468aeddbdb1c7fa137"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26907/KoLmafia-22.11.26907.dmg",
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
