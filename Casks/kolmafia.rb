cask "kolmafia" do
  version "26799"
  sha256 "e8bde6ab6e1c5f2d8a0b99eeeedfbacda722a9fe3ec479f6cb47fe91986b72c7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26799/KoLmafia-22.09.26799.dmg",
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
