cask "kolmafia" do
  version "26577"
  sha256 "5d96a76accb7a66caa8618e72740347c427d53f8779fbfe2217b01f62211b930"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26577/KoLmafia-22.07.26577.dmg",
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
