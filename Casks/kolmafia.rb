cask "kolmafia" do
  version "29472"
  sha256 "f43d8b6e32c708e206de73dda3716198d99dcdb4da21493a39ebaa3ee5ca0596"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29472/KoLmafia-26.11.29472.dmg",
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
