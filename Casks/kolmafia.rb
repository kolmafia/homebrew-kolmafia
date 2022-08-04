cask "kolmafia" do
  version "26624"
  sha256 "5154b6b29e0df4a17618b765291a49ca5c9367600b7b950f9c62d71d6fe1a3c0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26624/KoLmafia-22.08.26624.dmg",
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
