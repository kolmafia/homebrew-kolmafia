cask "kolmafia" do
  version "29361"
  sha256 "bcf40b4ee5739baa27e55a28ba1a4c03fbe2173070d870de372de7ec84618c07"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29361/KoLmafia-26.10.29361.dmg",
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
