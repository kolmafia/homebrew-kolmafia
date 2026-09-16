cask "kolmafia" do
  version "29269"
  sha256 "fe421b1dda3ab5c6f7eceb5256c88eef9de554b85e8071c1d8fc879d3f60f71f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29269/KoLmafia-26.09.29269.dmg",
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
