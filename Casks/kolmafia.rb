cask "kolmafia" do
  version "26542"
  sha256 "c01c65747c0b2f6ecaa50f1a94924d173bd06765e9fc4111c7124530b8641e82"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26542/KoLmafia-22.07.26542.dmg",
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
