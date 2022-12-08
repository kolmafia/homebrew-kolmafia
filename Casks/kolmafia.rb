cask "kolmafia" do
  version "26992"
  sha256 "32cfd0e6c18f125a8772a849407ed852685dfff60bc1fb8581602b13cedef600"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26992/KoLmafia-22.12.26992.dmg",
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
