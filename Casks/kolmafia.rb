cask "kolmafia" do
  version "29205"
  sha256 "c9c99ffeaf8f7690c88e3b93d8ee92233ef573f488599c549057d66b4a56206f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29205/KoLmafia-26.08.29205.dmg",
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
