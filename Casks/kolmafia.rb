cask "kolmafia" do
  version "29322"
  sha256 "36fe314aa98d2aa8cbf5c653ee1c9d79329ae3bcf05d824f98dac6f713f31327"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29322/KoLmafia-26.10.29322.dmg",
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
