cask "kolmafia" do
  version "26809"
  sha256 "331a821d91a25662973c3f48a34d4da36c4ee1d7dd5ac9e8106c8a49a97071bb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26809/KoLmafia-22.10.26809.dmg",
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
