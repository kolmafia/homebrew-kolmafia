cask "kolmafia" do
  version "26593"
  sha256 "b92b9dc21bd820f6ad8808127940a060e4026a9476db387c0cdc0932d7a31770"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26593/KoLmafia-22.07.26593.dmg",
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
