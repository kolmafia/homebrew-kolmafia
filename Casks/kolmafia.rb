cask "kolmafia" do
  version "26651"
  sha256 "56b97195d20ad114d9952c01c8a9d062066d397f0cfb2e2940eaa3ec2ca47c1e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26651/KoLmafia-22.08.26651.dmg",
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
