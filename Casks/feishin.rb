cask "feishin" do
  arch arm: "arm64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "f8281f4130f327bdb1a6aab1f9edda50af2f12548639c785e50e310ba66a2c5e",
         intel: "0692b676b4c4f3169c9959cad483293d5cd59770f11afdcd6701df601cd03427"

  url "https://github.com/jeffvli/feishin/releases/download/v#{version}/Feishin-#{version}-mac-#{arch}.dmg"
  name "Feishin"
  desc "Modern self-hosted music player"
  homepage "https://github.com/jeffvli/feishin"

  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Feishin.app"

  zap trash: [
    "~/Library/Application Support/feishin",
    "~/Library/Logs/feishin",
    "~/Library/Preferences/org.jeffvli.feishin.plist",
    "~/Library/Saved Application State/org.jeffvli.feishin.savedState",
  ]
end
