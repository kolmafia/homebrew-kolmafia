cask "kolmafia" do
  version "26678"
  sha256 "806ab7a81885ec0dde5a03c251187fc3b5fdf86761846829ee9ae451553c2f75"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26678/KoLmafia-22.08.26678.dmg",
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
