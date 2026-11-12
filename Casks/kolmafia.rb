cask "kolmafia" do
  version "29424"
  sha256 "fbca527f3c63fdd10257894c0d0de8e5376df077f64a17289b70c3b958ad90d3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29424/KoLmafia-26.11.29424.dmg",
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
