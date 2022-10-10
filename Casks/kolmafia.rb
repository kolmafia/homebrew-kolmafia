cask "kolmafia" do
  version "26832"
  sha256 "e2ace880a803e329531603deb3274acf68256e589f4b45d39b4a1512360bd77f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26832/KoLmafia-22.10.26832.dmg",
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
