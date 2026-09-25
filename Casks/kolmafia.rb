cask "kolmafia" do
  version "29294"
  sha256 "97343e82828c3314cf7749758debed62c722ebb945d6a9e91680d0f840642b52"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29294/KoLmafia-26.09.29294.dmg",
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
