cask "kolmafia" do
  version "29459"
  sha256 "00630026433d3ba774d8c309373c91a241ef44233a9b7e20dbd96383bf1fbcc2"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29459/KoLmafia-26.11.29459.dmg",
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
