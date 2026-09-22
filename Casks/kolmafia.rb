cask "kolmafia" do
  version "29290"
  sha256 "684e3dd44c1bee113854c0c12fd3f8e0f4975fe31fd1298375b8370459c4571d"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29290/KoLmafia-26.09.29290.dmg",
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
