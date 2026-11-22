cask "kolmafia" do
  version "29461"
  sha256 "6b3ea6a018b35997c19cd0e06a43e6cb71a6617ea1334f200135580d7ada3ce5"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29461/KoLmafia-26.11.29461.dmg",
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
