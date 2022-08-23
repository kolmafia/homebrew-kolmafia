cask "kolmafia" do
  version "26691"
  sha256 "74d656108d718b1e2dd9811646e0bfd28adfd2e457181958639cf06b31ae9e9a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26691/KoLmafia-22.08.26691.dmg",
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
