cask "kolmafia" do
  version "26829"
  sha256 "fe6c9987259a9a009c48c4707bfca08eb19681d87835d81869f5e834a7cefd6f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26829/KoLmafia-22.10.26829.dmg",
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
