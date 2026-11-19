cask "kolmafia" do
  version "29447"
  sha256 "694ed6e353dd6b12e6cc83ff3f5a0e415865f139ffd23f401d22c99469a2f833"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29447/KoLmafia-26.11.29447.dmg",
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
