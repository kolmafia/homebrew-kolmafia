cask "kolmafia" do
  version "29383"
  sha256 "8ee5061762f3e8a340137d8515d498992fc8d672927bb61bd7e6a5e4b2e43ceb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29383/KoLmafia-26.10.29383.dmg",
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
