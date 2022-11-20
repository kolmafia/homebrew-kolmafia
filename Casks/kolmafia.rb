cask "kolmafia" do
  version "26970"
  sha256 "2eacbd3950562fbcd192374e3be56508ebaadd357f7f1efee3f958f087757ee0"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26970/KoLmafia-22.11.26970.dmg",
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
