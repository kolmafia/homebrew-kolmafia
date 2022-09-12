cask "kolmafia" do
  version "26738"
  sha256 "81519e3c7b669f47e1cbe4fa794768ea209f8c02d1509a8143b744c229dda5b7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26738/KoLmafia-22.09.26738.dmg",
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
