cask "feishin" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "f9a217b3f770a4fc4025e0863d6b7419a4cb530a130d65ce98f4515dc27d30c7",
         intel: "71d5cf8a0910aef3bc41a28f48b115a17afb30811cfce14210277974a461274c"

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
