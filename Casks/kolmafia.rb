cask "kolmafia" do
  version "29430"
  sha256 "fe9109bb12da30d1ad70a1d963364f5bccfc5804760fb5fc4f153146ca5fa193"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29430/KoLmafia-26.11.29430.dmg",
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
