cask "kolmafia" do
  version "29394"
  sha256 "690e41c3c82f9afbaf0d129ecdaf2ac2606d461cbbd78550ff9caeee03b1a184"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29394/KoLmafia-26.10.29394.dmg",
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
