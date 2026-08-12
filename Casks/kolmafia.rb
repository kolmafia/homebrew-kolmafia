cask "kolmafia" do
  version "29155"
  sha256 "b68c793e8454a73ed6a6020cc8f82c06441b37aeb5dedfe4f960a6e80f74ee6e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29155/KoLmafia-26.08.29155.dmg",
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
