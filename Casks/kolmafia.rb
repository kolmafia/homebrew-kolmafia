cask "kolmafia" do
  version "29233"
  sha256 "5bf4b533e076f1a2c9dd745c3aeaac6aa8c68c8c9183efc93f617cae8bd9fa31"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29233/KoLmafia-26.09.29233.dmg",
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
