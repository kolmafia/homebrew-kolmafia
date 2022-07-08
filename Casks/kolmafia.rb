cask "kolmafia" do
  version "26543"
  sha256 "18dec2b013ec386fb102a9185cea19b451068358aaf70ed3785d8da7962aabc3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26543/KoLmafia-22.07.26543.dmg",
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
