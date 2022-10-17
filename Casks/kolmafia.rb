cask "kolmafia" do
  version "26857"
  sha256 "5ab101fa545bb53bc5ae00237c9aa3dc75bf3c2c862efe1a3c9814dd7996d98d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26857/KoLmafia-22.10.26857.dmg",
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
