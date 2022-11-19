cask "kolmafia" do
  version "26966"
  sha256 "432042cb976971c801aa83b7b28c13d752fad7a42ab967f8d39bcc7bb8689468"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26966/KoLmafia-22.11.26966.dmg",
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
