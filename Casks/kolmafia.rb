cask "kolmafia" do
  version "26784"
  sha256 "30adb6d113c90f6a7be8352bd356ba829c289281c009cb43bc0ee241c7e87880"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26784/KoLmafia-22.09.26784.dmg",
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
