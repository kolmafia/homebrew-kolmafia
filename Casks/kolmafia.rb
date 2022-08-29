cask "kolmafia" do
  version "26709"
  sha256 "f826be8aa077ca83aafd497f1b6418763d1f37826f891167e9e1716a08c65971"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26709/KoLmafia-22.08.26709.dmg",
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
