cask "kolmafia" do
  version "26547"
  sha256 "db02194fdcd3051775cf2d3a0de45b6479a4f2957567185377f70d2ea2d1d4c2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26547/KoLmafia-22.07.26547.dmg",
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
