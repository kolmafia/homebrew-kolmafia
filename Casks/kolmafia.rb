cask "kolmafia" do
  version "26771"
  sha256 "6ef0750b6eeb968f5f55088687eb15fe2be7344e8c88eae1d57f8166300328df"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26771/KoLmafia-22.09.26771.dmg",
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
