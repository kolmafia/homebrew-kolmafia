cask "kolmafia" do
  version "29212"
  sha256 "588cbe3e0a289f398963856b43eb700e2125605417d7fb700f160c24efd289c9"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29212/KoLmafia-26.08.29212.dmg",
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
