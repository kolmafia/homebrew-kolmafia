cask "kolmafia" do
  version "29440"
  sha256 "be59382bf2a36ceb5d676b0ee65891a289db94f21f80b6a56a54cd74e90714ac"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29440/KoLmafia-26.11.29440.dmg",
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
