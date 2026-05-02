class RbScrobbler < Formula
  desc "Minimal Rockbox Last.fm Scrobbler (.scrobbler.log files)"
  homepage "https://github.com/jeselnik/rb-scrobbler"
  license "GPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/v2.4/rb-scrobbler-darwin-arm64"
      sha256 "a2965c9988f85a5d15b9f236f1d9d9a57877c989a6855740b6e4fad128ea84da"
    else
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/v2.4/rb-scrobbler-darwin-amd64"
      sha256 "24fe2b5b6a1fe2a127476d9153be91cb8d54d03fc8334bead2ab95c93a2585d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/v2.4/rb-scrobbler-linux-arm64"
      sha256 "9025ad0bf6d748c9cbf4acc1f9562795d65d76f749433ae903cc14350e3e92f0"
    else
      url "https://github.com/jeselnik/rb-scrobbler/releases/download/v2.4/rb-scrobbler-linux-amd64"
      sha256 "f3b6103e2bbd5e93d69a20aff7767f7dbbd807476b499405ca583cdf39ff7d3b"
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
