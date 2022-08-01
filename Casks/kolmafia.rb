cask "kolmafia" do
  version "26619"
  sha256 "425a35760e262abffe9ccd9eae84f8dd3b73099b1ae4716ee3c58ea784bd0499"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26619/KoLmafia-22.08.26619.dmg",
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
