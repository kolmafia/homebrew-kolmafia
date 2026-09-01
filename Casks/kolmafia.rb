cask "kolmafia" do
  version "29217"
  sha256 "bb86355d331e92ef6d59eb6d861dd2c048643e8ec476c99456657e6051f0321f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29217/KoLmafia-26.09.29217.dmg",
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
