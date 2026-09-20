cask "kolmafia" do
  version "29286"
  sha256 "06b16135d6de7d2fb7682d45c32a045152abd4a8671de52133317d93d66de464"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29286/KoLmafia-26.09.29286.dmg",
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
