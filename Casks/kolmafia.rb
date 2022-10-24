cask "kolmafia" do
  version "26877"
  sha256 "0b469d6c4745d832aa256afc38cbd8514dd222fdbf3826355ced492be2124d12"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26877/KoLmafia-22.10.26877.dmg",
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
