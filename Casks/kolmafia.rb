cask "kolmafia" do
  version "null"
  sha256 "379a8eb95daa8b1a3a508dc68c0e56c07c6812f5982932111d7e4cbe9f74a7e6"

  url "",
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
