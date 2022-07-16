cask "kolmafia" do
  version "26573"
  sha256 "970d137efce83f1ac41cb7d58f692ad7b4ab370507980ce6f9022469e11b38d9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26573/KoLmafia-22.07.26573.dmg",
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
