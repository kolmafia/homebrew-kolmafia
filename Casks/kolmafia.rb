cask "kolmafia" do
  version "29453"
  sha256 "6d6c273b459aca7e3dcdf50ed63701044e3af6fde158a924c46339b808c6361d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29453/KoLmafia-26.11.29453.dmg",
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
