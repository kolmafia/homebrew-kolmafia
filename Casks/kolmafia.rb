cask "kolmafia" do
  version "26909"
  sha256 "16511fd48bb77e7d42454f09ed3cd52ca9fe6d5e80705b949b81da98153a28ce"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26909/KoLmafia-22.11.26909.dmg",
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
