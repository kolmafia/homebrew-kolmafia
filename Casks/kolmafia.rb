cask "kolmafia" do
  version "29381"
  sha256 "fc1d64a77606ad9ab4b6b9c237c3fc1da919f2671fd1fc423c9f2e28cd764929"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29381/KoLmafia-26.10.29381.dmg",
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
