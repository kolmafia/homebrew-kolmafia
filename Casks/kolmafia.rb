cask "kolmafia" do
  version "26861"
  sha256 "d2e33d392a1181c64ae36a9740b015fdf9919722f9f3474f483ff92358df84a7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26861/KoLmafia-22.10.26861.dmg",
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
