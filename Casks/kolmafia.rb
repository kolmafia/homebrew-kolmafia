cask "kolmafia" do
  version "29455"
  sha256 "a0ae57eed3d982124061c71b2ae32d1ef3f63bf2a32f3ef26c6f814292aa7299"

  url "https://github.com/kolmafia/kolmafia/releases/download/r29455/KoLmafia-26.11.29455.dmg",
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
