cask "kolmafia" do
  version "29306"
  sha256 "d66788f8b94fea3c7109b6e85ec954838b3c2ab68e3e78f1ff023ecd0cea90c5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29306/KoLmafia-26.09.29306.dmg",
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
