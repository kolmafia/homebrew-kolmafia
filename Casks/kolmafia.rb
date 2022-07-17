cask "kolmafia" do
  version "26576"
  sha256 "2b83b84d7beccfc43a8c76d83fce421bb3998a36c2f2554e2e6076979dfd160a"

  url "https://github.com/kolmafia/kolmafia/releases/download/r26576/KoLmafia-22.07.26576.dmg",
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
