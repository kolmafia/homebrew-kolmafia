cask "kolmafia" do
  version "26621"
  sha256 "470ebaa1181ab842c25d253bcc9e74076c49078c9b9cbb389039656fbafd1f24"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26621/KoLmafia-22.08.26621.dmg",
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
