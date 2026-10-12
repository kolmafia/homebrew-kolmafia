cask "kolmafia" do
  version "29366"
  sha256 "245eab51075b3a39a8643892f4e8628849495fac1673f60b5bcfa6bf2311265a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29366/KoLmafia-26.10.29366.dmg",
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
