cask "kolmafia" do
  version "26557"
  sha256 "1f29641181ac8abe995261f39b919d419799f122895318ea557b89f9f689300f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26557/KoLmafia-22.07.26557.dmg",
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
