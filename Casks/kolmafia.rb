cask "kolmafia" do
  version "29203"
  sha256 "2dc34634f84682a5c27fb001f3ea91964efeabb6796ea2ac4b2690d4a7a849d7"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29203/KoLmafia-26.08.29203.dmg",
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
