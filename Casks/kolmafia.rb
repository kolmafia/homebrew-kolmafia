cask "kolmafia" do
  version "29442"
  sha256 "f8357231290c68a272796888536ab04b7114cb552ce54b498b59a9af52d5281f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29442/KoLmafia-26.11.29442.dmg",
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
