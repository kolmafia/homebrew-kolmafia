cask "kolmafia" do
  version "26912"
  sha256 "02fb62345c3f0a2b9a0d377e85b16ede8fcb45ea9e9cf652e9456ac6eb4c8555"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26912/KoLmafia-22.11.26912.dmg",
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
