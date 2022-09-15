cask "kolmafia" do
  version "26751"
  sha256 "4428356a0a2b9690c45cd943b1c5afae871fc953d3ac0f10281bc4efb7cf4cd7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26751/KoLmafia-22.09.26751.dmg",
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
