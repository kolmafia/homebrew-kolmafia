cask "kolmafia" do
  version "29177"
  sha256 "3843d16fe571ab002e163ae4450ad425e2b0ce5981f9d966abc4aff880542a9a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29177/KoLmafia-26.08.29177.dmg",
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
