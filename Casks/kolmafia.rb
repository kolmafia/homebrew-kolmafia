cask "kolmafia" do
  version "26823"
  sha256 "02359c1822f807764a6fe0286e45f9beaa3e532fba328dcbffd2b5abb717cec6"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26823/KoLmafia-22.10.26823.dmg",
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
