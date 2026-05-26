cask "feishin" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "c944c89f57d6e4b26439ecd7800594441c140d102a21bac05ebacb59a0b44788",
         intel: "9e9178ebe4cf923cd75b5f254e1e53f8192fb62c6aee44a28383ccc412b3e368"

  url "https://github.com/jeffvli/feishin/releases/download/v#{version}/Feishin-#{version}-mac-#{arch}.dmg"
  name "Feishin"
  desc "Modern self-hosted music player"
  homepage "https://github.com/jeffvli/feishin"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Feishin.app"

  zap trash: [
    "~/Library/Application Support/feishin",
    "~/Library/Logs/feishin",
    "~/Library/Preferences/org.jeffvli.feishin.plist",
    "~/Library/Saved Application State/org.jeffvli.feishin.savedState",
  ]
end
