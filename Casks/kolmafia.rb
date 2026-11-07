cask "kolmafia" do
  version "29414"
  sha256 "9a2eeadda6aaec22178596be4507d0ec07161df063fa3679184a7c097c44ed76"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29414/KoLmafia-26.11.29414.dmg",
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
