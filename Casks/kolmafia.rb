cask "kolmafia" do
  version "29246"
  sha256 "56d5fd222d441e3d2bfd5393714f2471ddfee5ffe47015c2a8dd6bf44cb3a709"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29246/KoLmafia-26.09.29246.dmg",
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
