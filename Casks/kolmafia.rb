cask "kolmafia" do
  version "26855"
  sha256 "a529f9ca8d52aefd5a6faa6871666646dd9f419dfd260aa04ebaa38a67d1ca12"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26855/KoLmafia-22.10.26855.dmg",
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
