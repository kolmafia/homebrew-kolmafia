cask "kolmafia" do
  version "29329"
  sha256 "36bab8aff9292525a7cf4249e939ba723f4066c999e5d55a506a7a447908140b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29329/KoLmafia-26.10.29329.dmg",
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
