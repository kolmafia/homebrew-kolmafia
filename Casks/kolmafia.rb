cask "kolmafia" do
  version "29458"
  sha256 "3b4ec4f1c2cbdff7c699dcc3f6ac1b4b2e34f8ae8468a773115e1ca9a992af20"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29458/KoLmafia-26.11.29458.dmg",
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
