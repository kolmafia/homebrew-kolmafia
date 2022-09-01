cask "kolmafia" do
  version "26714"
  sha256 "3aabdb71de686cf17a63fc62171cbe09083d16e1d5a995aebefcae95cb4a1540"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26714/KoLmafia-22.09.26714.dmg",
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
