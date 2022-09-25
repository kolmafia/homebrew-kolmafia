cask "kolmafia" do
  version "26792"
  sha256 "b4824dfe4eebd63aa2feec96ee0a3400b189a734cefe8bc97555517704f16e4a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26792/KoLmafia-22.09.26792.dmg",
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
