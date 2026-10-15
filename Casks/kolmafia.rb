cask "kolmafia" do
  version "29369"
  sha256 "34cf9d8e525a57985e81186c4bb92847f36f27fe08f578667a97f770c999a1c1"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29369/KoLmafia-26.10.29369.dmg",
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
