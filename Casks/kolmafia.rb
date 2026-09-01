cask "kolmafia" do
  version "29218"
  sha256 "ab9dfa00a0596bb30fb6f1f74a0d06b702960676ba8e5c697f64b7816774083a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29218/KoLmafia-26.09.29218.dmg",
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
