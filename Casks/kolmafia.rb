cask "kolmafia" do
  version "27002"
  sha256 "9456e4f8ff54474807dbe3ef18e1cb2774b38087ab8df1b4082e7bf2614f069f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r27002/KoLmafia-22.12.27002.dmg",
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
