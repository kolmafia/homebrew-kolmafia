cask "kolmafia" do
  version "29195"
  sha256 "05473906e12f7f2c705acb459b37e107cf81cf05c76518fe6eed9f3445f4f685"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29195/KoLmafia-26.08.29195.dmg",
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
