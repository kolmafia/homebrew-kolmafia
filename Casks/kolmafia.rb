cask "kolmafia" do
  version "29259"
  sha256 "6a7e96381c1d4c5ec4fac5521b0a89ed6fefc449f4caab39a6cd52c5898516eb"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29259/KoLmafia-26.09.29259.dmg",
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
