cask "kolmafia" do
  version "26866"
  sha256 "ff0c70f3a9d368a1d05fb17b86ab17ed63cf9cace1a04b0c33ac9628eb178914"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26866/KoLmafia-22.10.26866.dmg",
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
