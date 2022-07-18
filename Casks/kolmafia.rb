cask "kolmafia" do
  version "26581"
  sha256 "1ce3238c5ac26a901024d1111093e94e72f9d9a6ee0dde2086646ecd5350a663"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26581/KoLmafia-22.07.26581.dmg",
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
