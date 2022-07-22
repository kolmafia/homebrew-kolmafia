cask "kolmafia" do
  version "26595"
  sha256 "1013fec108747a298c16c876b31423688e7ae81cabf38e8cedf163db8e274d5b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26595/KoLmafia-22.07.26595.dmg",
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
