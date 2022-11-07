cask "kolmafia" do
  version "26908"
  sha256 "e70f77abb0d3ad2540f72dbe51a497a7c4a78a9360c6ccbe61c1ef3920f48bda"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26908/KoLmafia-22.11.26908.dmg",
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
