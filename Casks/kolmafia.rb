cask "kolmafia" do
  version "26795"
  sha256 "74346b1688092556369c899877e3615c7b9ac1251ed914aec9f920c17105e138"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26795/KoLmafia-22.09.26795.dmg",
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
