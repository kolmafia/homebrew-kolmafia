cask "kolmafia" do
  version "26917"
  sha256 "60a6f9a6d070a7826edd0ee835690ac5ba1314c85fa85edd6e5da39ca28ec6e4"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26917/KoLmafia-22.11.26917.dmg",
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
