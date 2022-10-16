cask "kolmafia" do
  version "26854"
  sha256 "f843438dd7c9dda165575e571c2a3bcb2bc804e7498ef630ffc21fd8625aa278"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26854/KoLmafia-22.10.26854.dmg",
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
