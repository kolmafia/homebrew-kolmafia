cask "kolmafia" do
  version "29346"
  sha256 "5d764ae41f066293e3eb0f44c3b65f20fbe10bc794bc7b147f0a4a53a03c8b0f"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29346/KoLmafia-26.10.29346.dmg",
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
