cask "kolmafia" do
  version "26669"
  sha256 "bb0b1b55ad40d6d426f50fea84fcedabd40a34ce6a7a71fa6a8ed287cf3bcf38"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26669/KoLmafia-22.08.26669.dmg",
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
