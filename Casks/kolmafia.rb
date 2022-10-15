cask "kolmafia" do
  version "26849"
  sha256 "6ef57d8d6bb477c6547d12fd18a4124ca2de7c2eb1bd67357664cffa3ce17fc3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26849/KoLmafia-22.10.26849.dmg",
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
