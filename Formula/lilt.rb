class Lilt < Formula
  desc "A CLI tool for transcoding HiFi music files to 16bit variations"
  homepage "https://github.com/Ardakilic/lilt"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Ardakilic/lilt/releases/download/v3.2.0/lilt-darwin-arm64.tar.gz"
      sha256 "d1faded426f3930f7c99959697c0405283b9646a006e3f88e4f307cb5cfaba6c"
    else
      url "https://github.com/Ardakilic/lilt/releases/download/v3.2.0/lilt-darwin-amd64.tar.gz"
      sha256 "f51576f6f24235bc1c55f2b81a826eb918cbdc4549a04c77d95c341191da1512"
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
