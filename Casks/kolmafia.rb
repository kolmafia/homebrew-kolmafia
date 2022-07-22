cask "kolmafia" do
  version "26591"
  sha256 "ba235f0faf963e37dec49d28abd63e718407d1865ce88f8bbf0d03ca73b32918"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26591/KoLmafia-22.07.26591.dmg",
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
