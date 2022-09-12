cask "kolmafia" do
  version "26742"
  sha256 "903ac44a210b0310dae69dbaf051fa2f306ee15bed5027c9657454e2111bdf91"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26742/KoLmafia-22.09.26742.dmg",
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
