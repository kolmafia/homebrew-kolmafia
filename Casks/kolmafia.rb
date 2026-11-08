cask "kolmafia" do
  version "29417"
  sha256 "ea9c5e467f97c6bea223f0ae65787add4c7334fa0864c5ba7dfe15b799f89e77"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29417/KoLmafia-26.11.29417.dmg",
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
