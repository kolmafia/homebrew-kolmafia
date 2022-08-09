cask "kolmafia" do
  version "26638"
  sha256 "9873b5be6daa277270aa1857e8a7f78ad0882883f3a13d1e76500340b27022ed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26638/KoLmafia-22.08.26638.dmg",
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
