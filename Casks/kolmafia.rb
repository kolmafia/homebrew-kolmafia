cask "kolmafia" do
  version "29312"
  sha256 "c1dd6d4a24b1b03bf4a62fcc270b9b96e56cb4610485cf091e0560a4983f146c"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29312/KoLmafia-26.09.29312.dmg",
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
