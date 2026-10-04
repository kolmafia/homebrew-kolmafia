cask "kolmafia" do
  version "29334"
  sha256 "b8219988ec2bdc8e7c17fa072775bcf224d9aa2be7ad3132645ccd1d07301fb3"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29334/KoLmafia-26.10.29334.dmg",
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
