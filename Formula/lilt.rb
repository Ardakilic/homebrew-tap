class Lilt < Formula
  desc "A CLI tool for transcoding HiFi music files to 16bit variations"
  homepage "https://github.com/Ardakilic/lilt"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Ardakilic/lilt/releases/download/v3.3.0/lilt-darwin-arm64.tar.gz"
      sha256 "8028ba93c7543b955b65a08680c0be049e04b9968ef4d34fa7350b98e8dc6289"
    else
      url "https://github.com/Ardakilic/lilt/releases/download/v3.3.0/lilt-darwin-amd64.tar.gz"
      sha256 "8eca34e6d76011ff3d350383252d90e0a98e142795313cca4e8824fac4231e15"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lilt-darwin-arm64" => "lilt"
    else
      bin.install "lilt-darwin-amd64" => "lilt"
    end
  end

  test do
    system "#{bin}/lilt", "--version"
  end
end
