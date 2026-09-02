cask "kolmafia" do
  version "29222"
  sha256 "0ded0d78935d53d87bf12e65523e00efdba14248e1e6bf02168b321740df1995"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29222/KoLmafia-26.09.29222.dmg",
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
