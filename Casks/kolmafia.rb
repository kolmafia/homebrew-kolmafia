cask "kolmafia" do
  version "29358"
  sha256 "f32468122686f45c2a240161cec3c3c74a7f84efbe530a688c227e16fb9d757e"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29358/KoLmafia-26.10.29358.dmg",
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
