cask "kolmafia" do
  version "29395"
  sha256 "af484685f1005f1efa8d1ab2f5b787dcd065562f1e1768c6400ba17cc6a1abc7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29395/KoLmafia-26.10.29395.dmg",
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
