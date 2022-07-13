cask "kolmafia" do
  version "26559"
  sha256 "0f504016e12915f83afd069f30ccfef8465b9403673d19cf4da0261145fac488"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26559/KoLmafia-22.07.26559.dmg",
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
