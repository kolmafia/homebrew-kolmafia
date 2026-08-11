cask "kolmafia" do
  version "29153"
  sha256 "3e53daa72a01ded83edc036c066ecf605fe91d275e0b3539322cad2eba5470b7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29153/KoLmafia-26.08.29153.dmg",
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
