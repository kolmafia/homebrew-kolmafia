cask "kolmafia" do
  version "29375"
  sha256 "aa259cc02ebafd1749d414abe9663ad46d3cc8fa68dc68c973a37d5bc3ce7113"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29375/KoLmafia-26.10.29375.dmg",
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
