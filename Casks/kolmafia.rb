cask "kolmafia" do
  version "29193"
  sha256 "023421ba519324517d89a65299be0fc06e0b4e5f0c9e38a8087fccd989e8b192"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29193/KoLmafia-26.08.29193.dmg",
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
