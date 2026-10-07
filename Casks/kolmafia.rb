cask "kolmafia" do
  version "29345"
  sha256 "b9c7185fe3a725f426b77252904bf1a5d105c83c4c9e3401e197afe7f19e17ca"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29345/KoLmafia-26.10.29345.dmg",
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
