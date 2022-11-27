cask "kolmafia" do
  version "26980"
  sha256 "1c65be332e0f577a619114b29ce51c274fc17bfa8f0256d5762437ee8dbdea91"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26980/KoLmafia-22.11.26980.dmg",
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
