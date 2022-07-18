cask "kolmafia" do
  version "26580"
  sha256 "05906be7aa93baa6100579155d053eab2931dbee275bf71ed21a5e185dd6821b"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26580/KoLmafia-22.07.26580.dmg",
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
