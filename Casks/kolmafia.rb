cask "kolmafia" do
  version "29263"
  sha256 "d0e0483b7f760998d6512166eb1ad96dc2978fe1b946e5aa9ce5ff2bb86626bc"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29263/KoLmafia-26.09.29263.dmg",
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
