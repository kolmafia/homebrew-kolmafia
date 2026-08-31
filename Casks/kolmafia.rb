cask "kolmafia" do
  version "29208"
  sha256 "888c55e79ff56e74b06f6861df41c921892f90c4337ed68abe5b7195725f6fa8"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29208/KoLmafia-26.08.29208.dmg",
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
