cask "kolmafia" do
  version "29351"
  sha256 "460f365056ebb51326ff1a6471ad9e868f698da5ad066efa068fd0c59f98abb4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29351/KoLmafia-26.10.29351.dmg",
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
