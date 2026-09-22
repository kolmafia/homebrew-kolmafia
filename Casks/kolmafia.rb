cask "kolmafia" do
  version "29288"
  sha256 "eecf67da45c9f1bf925e02d08a9b5cc31b905e973d5556447ca486d0c7860fed"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29288/KoLmafia-26.09.29288.dmg",
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
