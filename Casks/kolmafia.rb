cask "kolmafia" do
  version "27000"
  sha256 "21451bf5b86b2baa5ae31d0a07aa393f09831c5644c93ef5ca2e54559e0495b4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27000/KoLmafia-22.12.27000.dmg",
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
