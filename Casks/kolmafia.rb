cask "kolmafia" do
  version "29272"
  sha256 "084b75efe8daa9c18679e1948ed4afd5ebcba751208d2fe1d02f0f8dcbdff4ad"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29272/KoLmafia-26.09.29272.dmg",
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
