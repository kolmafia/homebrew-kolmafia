cask "kolmafia" do
  version "26910"
  sha256 "68a55bda8dd824ae4febf1be244d1ca3e13a9c8dad9f3506298d479285ced59f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26910/KoLmafia-22.11.26910.dmg",
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
