cask "kolmafia" do
  version "29341"
  sha256 "5a6cc32163778c3694257029cb495eee6278890f7477880472b3f108afb125f2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29341/KoLmafia-26.10.29341.dmg",
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
