class RbScrobbler < Formula
  desc "Minimal Rockbox Last.fm Scrobbler (.scrobbler.log files)"
  homepage "https://github.com/jeselnik/rb-scrobbler"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/null/rb-scrobbler-darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/null/rb-scrobbler-darwin-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/null/rb-scrobbler-linux-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/null/rb-scrobbler-linux-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin_name = if OS.mac?
      "rb-scrobbler-darwin-#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}"
    elsif OS.linux?
      "rb-scrobbler-linux-#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}"
    end
    bin.install bin_name => "rb-scrobbler"
  end

  test do
    system "#{bin}/rb-scrobbler", "-help"
  end
end
