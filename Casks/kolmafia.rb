cask "kolmafia" do
  version "29460"
  sha256 "b1a4e47664565eb746f26f5e1f05bd467f6a11cb047b78df474c0f524ab6cf3a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29460/KoLmafia-26.11.29460.dmg",
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
