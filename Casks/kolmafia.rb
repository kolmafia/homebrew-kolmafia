cask "kolmafia" do
  version "26984"
  sha256 "661383e19b682bfc92acdf0c21772b1ae5613d6890a96875ad4b938f86088a66"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26984/KoLmafia-22.11.26984.dmg",
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
