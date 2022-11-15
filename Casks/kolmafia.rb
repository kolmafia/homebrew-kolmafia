cask "kolmafia" do
  version "26950"
  sha256 "421fa5e011488c7f085ae934fb8af4d811229f8828f50b1b492960037bc9cf53"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26950/KoLmafia-22.11.26950.dmg",
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
