cask "kolmafia" do
  version "26524"
  sha256 "afa1d1d41edd0891091676d1bda3ed5784b0f6d734d377945683a27b70d8c78d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26524/Kolmafia-22.07.26524.dmg",
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
