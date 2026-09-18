cask "kolmafia" do
  version "29281"
  sha256 "97703148ab96f5598456f63b27e0a09775f3fc50eb18fb21fbfe9849f106e02b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29281/KoLmafia-26.09.29281.dmg",
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
